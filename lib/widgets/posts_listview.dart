import 'package:flutter/material.dart';
import 'package:news/widgets/post.dart';

class PostsListView extends StatelessWidget {
  PostsListView({super.key, required this.posts});

  final List posts;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: posts.length,
            (context, index) => PostWidget(post: posts[index])));
  }
}
