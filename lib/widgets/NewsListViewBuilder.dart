import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_news_app/Models/NewsCardModel.dart';
import 'package:new_news_app/services/news_service.dart';
import 'package:new_news_app/widgets/ErrorMessageWidget.dart';
import 'package:new_news_app/widgets/LodingIndecatorWidget.dart';
import 'package:new_news_app/widgets/NewsListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.Category});
  final String Category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getNews(category: widget.Category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsCardModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            news: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const ErrorMessageWidget();
        } else {
          return const LoadingIndecatorWidget();
        }
      },
    );
  }
}
