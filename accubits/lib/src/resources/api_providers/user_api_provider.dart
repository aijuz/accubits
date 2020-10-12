import 'package:accubits/src/models/article_list_response.dart';
import 'package:accubits/src/models/state.dart';
import 'package:accubits/src/utils/object_factory.dart';

class UserApiProvider {
  Future<State> getArticleList() async {
    final response = await ObjectFactory().apiClient.getArticleList();
    print(response.toString());
    if (response.statusCode == 200) {
      return State<ArticleListResponse>.success(
          ArticleListResponse.fromJson(response.data));
    } else {
      return null;
    }
  }
}
