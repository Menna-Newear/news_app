import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DisplayFullArticle extends StatefulWidget {
  const DisplayFullArticle({super.key, required this.articleUrl});
  final String articleUrl;

  @override
  State<DisplayFullArticle> createState() => _DisplayFullArticleState();
}

class _DisplayFullArticleState extends State<DisplayFullArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News ",
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              Text(
                "Cloud",
                style: TextStyle(color: Colors.orange, fontSize: 24),
              )
            ],
          ),
        ),
        body: Container(
          child: WebView(
            initialUrl: widget.articleUrl,
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ));
  }
}
