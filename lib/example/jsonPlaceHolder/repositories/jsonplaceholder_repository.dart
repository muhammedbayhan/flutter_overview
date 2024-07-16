import 'package:dio/dio.dart';

class JsonplaceholderRepository {
  Dio dio = Dio();
  Future<void> fetchPost() async {
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/posts");
    print(response);
  }
}
