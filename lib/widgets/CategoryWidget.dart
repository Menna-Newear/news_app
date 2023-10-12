import 'package:flutter/material.dart';
import 'package:new_news_app/Models/CategoryModel.dart';
import 'package:new_news_app/Pages/categoryPage.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryPage(
                category: category.categoryPath,
              );
            },
          ),
        );
      },
      child: Container(
        height: 150,
        width: 200,
        child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(category.imagePath),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
