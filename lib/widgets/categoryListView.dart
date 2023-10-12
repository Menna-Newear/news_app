import 'package:flutter/material.dart';
import 'package:new_news_app/Models/CategoryModel.dart';
import 'package:new_news_app/widgets/CategoryWidget.dart';

// ignore: must_be_immutable
class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});
  List<CategoryModel> categoryList = [
    CategoryModel(
        categoryName: "Business",
        imagePath: "assets/business.avif",
        categoryPath: "business"),
    CategoryModel(
        categoryName: "Entertaiment",
        imagePath: "assets/entertaiment.avif",
        categoryPath: "entertainment"),
    CategoryModel(
        categoryName: "General",
        imagePath: "assets/general.avif",
        categoryPath: "general"),
    CategoryModel(
        categoryName: "Health",
        imagePath: "assets/health.avif",
        categoryPath: "health"),
    CategoryModel(
        categoryName: "Science",
        imagePath: "assets/science.avif",
        categoryPath: "science"),
    CategoryModel(
        categoryName: "Sports",
        imagePath: "assets/sports.avif",
        categoryPath: "sports"),
    CategoryModel(
        categoryName: "Technology",
        imagePath: "assets/technology.jpeg",
        categoryPath: "technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return CategoryWidget(
            category: categoryList[index],
          );
        }),
      ),
    );
  }
}
