import 'dart:convert';

import 'package:http/http.dart' as http;
class Photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });
  // dynamic là kiểu dl bất kì
factory Photo.fromJson(Map<String, dynamic>json){
  return Photo(
    albumId: json['albumId'],
    id: json['id'],
    title: json['title'],
    url: json['url'],
    thumbnailUrl: json['thumbnailUrl']
  );
}
static Future<List<Photo>> fetchData() async{
  var apiUrl = 'https://jsonplaceholder.typicode.com/photos';
  var response=  await http.get(Uri.parse(apiUrl));
  if ( response.statusCode == 200){
    var body = response.body;
    var json = jsonDecode(body);

    var ls = json.map<Photo>((e){
      return Photo.fromJson(e);
    }).toList();
    return ls;
  }
  else 
    throw new Exception("khong co du lieu tra ve");
}
}
// json to dart -> quicktype -> open Qicktype -> copy file ở json https://jsonplaceholder.typicode.com/ -> đặt tên -> copy file
// pub.dev-> thư viện http ->copy -> dán vào pubspec.yaml -> pub get