class JsonplaceholderPostModel {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  JsonplaceholderPostModel(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory JsonplaceholderPostModel.fromJson(Map<String, dynamic> json) {
    return JsonplaceholderPostModel(
        userId: json["userId"] as int,
        id: json["id"] as int,
        title: ["title"] as String,
        body: ["body"] as String);
  }
}




//  {
//     "userId": 1,
//     "id": 1,
//     "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
//     "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
//   },