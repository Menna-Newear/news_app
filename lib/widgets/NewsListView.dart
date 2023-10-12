import 'package:flutter/material.dart';
import 'package:new_news_app/Models/NewsCardModel.dart';
import 'package:new_news_app/widgets/NewsWidget.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.news});

  final List<NewsCardModel> news;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate:
          SliverChildBuilderDelegate(childCount: news.length, (context, index) {
        return NewsWidget(
          newsModel: news[index],
        );
      }),
    );
  }
}
