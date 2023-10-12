import 'package:flutter/material.dart';
import 'package:new_news_app/widgets/NewsListViewBuilder.dart';
import 'package:new_news_app/widgets/categoryListView.dart';

class initialPageWidget extends StatelessWidget {
  const initialPageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CategoryListView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          NewsListViewBuilder(
            Category: "general",
          ),
        ],
      )

      /*  child: Column(
        children: [
          CategoryListView(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: NewsListView(),
            flex: 1,
          )
        ],
      )*/
      ,
    );
  }
}
