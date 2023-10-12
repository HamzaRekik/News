import 'package:flutter/material.dart';

import '../models/models.dart';
import 'category.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  final List categories = [
    Category(
        image: "assets/business.jpg", query: "business", title: "Business"),
    Category(
        image: "assets/entertainment.jpg",
        query: "entertainment",
        title: "Entertainment"),
    Category(image: "assets/general.jpg", query: "general", title: "General"),
    Category(image: "assets/health.png", query: "health", title: "Health"),
    Category(image: "assets/science.jfif", query: "science", title: "Science"),
    Category(image: "assets/sports.jpg", query: "sports", title: "Sports"),
    Category(
        image: "assets/technology.jpg",
        query: "technology",
        title: "Technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      margin: EdgeInsets.only(top: 5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categories.map((e) => CategoryWidget(category: e)).toList(),
      ),
    );
  }
}
