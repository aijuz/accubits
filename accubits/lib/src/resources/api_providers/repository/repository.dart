import 'package:accubits/src/models/state.dart';
import 'package:accubits/src/resources/api_providers/user_api_provider.dart';

/// Repository is an intermediary class between network and data
class Repository {
  final userApiProvider = UserApiProvider();

  Future<State> sampleCall() => userApiProvider.sampleCall();
}
