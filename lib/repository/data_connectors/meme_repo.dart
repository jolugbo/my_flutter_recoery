import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../domain/models/meme.dart';
class MemeRepo{
  Future<Meme> getMeme() async{
    var url = Uri.parse('http://some-random-api.ml/meme');
    http.Response response = await http.get(url);
    Map<String, dynamic> singleMemeJson = jsonDecode(response.body);
    return Meme.fromJson(singleMemeJson);
  }
}
