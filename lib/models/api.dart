import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dvbnews_app/models/articles.dart';
import 'package:dvbnews_app/models/serializers.dart';

Future<List<Posts>> getArticles() async {
  final String baseUrl = 'http://burmese.dvb.no//wp-json/wp/v2/posts';
  final response = await http.get(Uri.parse(baseUrl));
  DVBArticles dvbArticles = standardSerializers.deserializeWith(
      DVBArticles.serializer, json.decode(response.body));

  if (response.statusCode == 200) {
    return dvbArticles.posts.map((Posts posts) => posts).toList();
  }
}
