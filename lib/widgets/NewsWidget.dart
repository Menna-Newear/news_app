import 'package:flutter/material.dart';
import 'package:new_news_app/Models/NewsCardModel.dart';
import 'package:new_news_app/Pages/displayFullArticle.dart';

class NewsWidget extends StatelessWidget {
  NewsWidget({super.key, required this.newsModel});
  final NewsCardModel newsModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DisplayFullArticle(articleUrl: newsModel.NewsURL ?? ""),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              newsModel.imagePath!,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 200,
                  width: double.infinity,
                  child: Icon(
                    Icons.error,
                    size: 50,
                    color: Colors.red,
                  ),
                );
              },
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            newsModel.NewsTitle ?? "",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            newsModel.NewsSubtitle ?? " ",
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            maxLines: 2,
            overflow: TextOverflow.fade,
          )
        ],
      ),
    );
  }
}
