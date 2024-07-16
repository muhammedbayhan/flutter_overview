import 'package:dio/dio.dart';
import 'package:flutter_full_learn/example/jsonPlaceHolder/model/jsonplaceholder_post_model.dart';

class JsonplaceholderRepository {
  Dio dio = Dio();
  Future<List<JsonplaceholderPostModel>?> fetchPost() async {
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/posts");
    if (response.statusCode == 200) {
      final data = response.data;
              print(data);

      if (data is List) {
        return data.map((item) => JsonplaceholderPostModel.fromJson(item)).toList();
      }
    }
    return null;
  }
  
}
