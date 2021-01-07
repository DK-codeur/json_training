import 'dart:convert';

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> myjson) => new Post(
    userId: myjson['userId'],
    id: myjson['id'],
    title: myjson['title'],
    body: myjson['body'],
  );

  Map<String, dynamic> toJson() => {
    'userId': userId,
    'id': id,
    'title': title,
    'body': body,
  };
}


Post postFromjson(String str) {
  final jsonData = json.decode(str);
  return Post.fromJson(jsonData);
}

List<Post> allPostFromJson(String str) {
  final jsonData = json.decode(str); // json decodé == json
  return new List<Post>.from(jsonData.map((p) => Post.fromJson(p)));
}

String postToJson(Post data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}