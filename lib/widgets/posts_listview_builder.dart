import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/widgets/error_indicator.dart';
import 'package:news/widgets/news_idicator.dart';
import 'package:news/widgets/posts_listview.dart';
import '../../services/news_service.dart';
import '../models/models.dart';

class PostsListViewBuilder extends StatefulWidget {
  PostsListViewBuilder({required this.category});
  final String category;

  @override
  State<PostsListViewBuilder> createState() => _PostsListViewBuilderState();
}

class _PostsListViewBuilderState extends State<PostsListViewBuilder> {
  var future;

  @override
  void initState() {
    future = NewsService(Dio()).getNews(widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PostsListView(posts: snapshot.data!);
          } else if (snapshot.hasData) {
            return const ErrorMsg(
              msg: "error",
            );
          } else {
            return const NewsIndicator();
          }
        });
  }
}
