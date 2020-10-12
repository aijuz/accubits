import 'dart:async';
import 'dart:io';

import 'package:accubits/src/utils/urls.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/material.dart';

class ApiClient {
  ApiClient() {
    initClient();
  }

//for api client testing only
  ApiClient.test({@required this.dio});

  Dio dio;
  BaseOptions _baseOptions;

  initClient() async {
    _baseOptions = new BaseOptions(
        baseUrl: Urls.baseUrl,
        connectTimeout: 300000,
        receiveTimeout: 1000000,
        followRedirects: true,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.acceptHeader: 'application/json',
        },
        responseType: ResponseType.json,
        receiveDataWhenStatusError: true);

    dio = Dio(_baseOptions);

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
    };

    dio.interceptors.add(CookieManager(new CookieJar()));
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions reqOptions) {
        return reqOptions;
      },
      onError: (DioError dioError) {
        return dioError.response;
      },
    ));
  }

  /// Verify User
  Future<Response> sampleApiCall() {
    return dio.post("", data: {});
  }

  /// search Flatmate
//  Future<Response> searchFlatmate(String searchText) {
//    dio.options.headers
//        .addAll({"Authorization": ObjectFactory().prefs.getAuthToken()});
//    return dio.get(
//        Urls.SEARCH_FLATMATE + "{\"search_param\"= \"$searchText\"}");
//  }

}
