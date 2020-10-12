// To parse this JSON data, do
//
//     final sampleResponseModel = sampleResponseModelFromJson(jsonString);

import 'dart:convert';

SampleResponseModel sampleResponseModelFromJson(String str) =>
    SampleResponseModel.fromJson(json.decode(str));

String sampleResponseModelToJson(SampleResponseModel data) =>
    json.encode(data.toJson());

class SampleResponseModel {
  SampleResponseModel({
    this.status,
    this.mesaage,
    this.data,
  });

  String status;
  String mesaage;
  Data data;

  factory SampleResponseModel.fromJson(Map<String, dynamic> json) =>
      SampleResponseModel(
        status: json["status"] == null ? null : json["status"],
        mesaage: json["mesaage"] == null ? null : json["mesaage"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "mesaage": mesaage == null ? null : mesaage,
        "data": data == null ? null : data.toJson(),
      };
}

class Data {
  Data();

  factory Data.fromJson(Map<String, dynamic> json) => Data();

  Map<String, dynamic> toJson() => {};
}
