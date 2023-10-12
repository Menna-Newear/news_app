import 'package:flutter/material.dart';
import 'package:new_news_app/widgets/NewsListViewBuilder.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});
  final String category;

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
      body: CustomScrollView(
        slivers: [NewsListViewBuilder(Category: category)],
      ),
    );
  }
}
