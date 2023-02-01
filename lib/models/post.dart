//To parse this JSON, do
//
//   final post = postFromJSON(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(json.decode(str));

class Post{
  Post({
    required this.userId,
    required this.id,
    required this.title,
    this.body 
  });

  int userId;
  int id;
  String title;
  String ? body;

  factory Post.fromJson(Map<String, dynamic> json)=>Post(
    userId: json ['userId'], 
    id: json['id'], 
    title: json ['title'],
    body: json ['body'],
    );

}