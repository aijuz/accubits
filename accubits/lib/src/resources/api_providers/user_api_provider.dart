import 'package:accubits/src/models/notification/notification_list_response.dart';
import 'package:accubits/src/models/state.dart';
import 'package:accubits/src/utils/object_factory.dart';

class UserApiProvider {
  Future<State> sampleCall() async {
    final response = await ObjectFactory().apiClient.sampleApiCall();
    print(response.toString());
    if (response.statusCode == 200) {
      return State<SampleResponseModel>.success(
          SampleResponseModel.fromJson(response.data));
    } else {
      return null;
    }
  }
}
