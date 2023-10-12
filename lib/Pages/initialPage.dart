import 'package:flutter/material.dart';
import 'package:new_news_app/widgets/initialPageWidget.dart';

class initialPage extends StatelessWidget {
  initialPage({super.key});

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
        body: initialPageWidget());
  }
}
