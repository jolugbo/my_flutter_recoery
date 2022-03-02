import 'dart:convert';

class Meme{
  final int id;
  final String image;
  final String caption;
  final String category;

  Meme(this.id, this.image, this.caption, this.category);

  Meme.fromJson(Map<String, dynamic> json)
  : id = json["id"],
    image = json["image"] ?? "",
    caption = json["caption"],
    category = json["category"];
}

List<Meme> albumFromJson(String str) =>
    List<Meme>.from(json.decode(str).map((x) => Meme.fromJson(x)));

// String albumToJson(List<Meme> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));