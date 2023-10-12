import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_news_app/Pages/initialPage.dart';

void main(List<String> args) {
  runApp(NewsApp());
}

final dio = Dio();

void getNews() async {
  final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=eg&apiKey=8dc9602c58134642a93e9fa891eb8e1d');
  print(response);
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: initialPage(),
    );
  }
}
