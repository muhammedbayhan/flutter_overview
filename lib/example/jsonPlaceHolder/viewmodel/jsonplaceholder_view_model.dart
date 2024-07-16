import 'package:flutter_full_learn/example/jsonPlaceHolder/model/jsonplaceholder_post_model.dart';
import 'package:flutter_full_learn/example/jsonPlaceHolder/repositories/jsonplaceholder_repository.dart';

class JsonplaceholderViewModel {
  JsonplaceholderRepository jsonplaceholderRepository =
      JsonplaceholderRepository();
  List<JsonplaceholderPostModel>? posts = [];

  Future<void> fetchPost() async {
    posts = await jsonplaceholderRepository.fetchPost();
  }
}
