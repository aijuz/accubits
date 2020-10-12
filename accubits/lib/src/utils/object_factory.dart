import 'package:accubits/src/resources/api_providers/repository/repository.dart';
import 'api_client.dart';

/// it is a hub that connecting pref,repo,client
/// used to reduce imports in pages
class ObjectFactory {
  static final _objectFactory = ObjectFactory._internal();

  ObjectFactory._internal();

  factory ObjectFactory() => _objectFactory;

  ///Initialisation of Objects
  ApiClient _apiClient = ApiClient();
  Repository _repository = Repository();

  ///
  /// Getters of Objects
  ///
  ApiClient get apiClient => _apiClient;

  Repository get repository => _repository;
}
