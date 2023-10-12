import 'package:flutter/material.dart';
import 'package:news/widgets/posts_listview_builder.dart';

class CategoryView extends StatelessWidget {
  CategoryView({required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          CustomScrollView(slivers: [PostsListViewBuilder(category: category)]),
    );
  }
}
