import 'package:flutter/material.dart';
import 'package:news/models/models.dart';

class SinglePostView extends StatelessWidget {
  SinglePostView({required this.post});
  final Post post;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Expanded(
              child: Image(
            image: NetworkImage(post.image!),
            fit: BoxFit.cover,
          )),
          Expanded(
              child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                color: Colors.amber,
                height: 60,
                child: Text(
                  post.author!,
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                color: Colors.amber,
                height: 60,
                child: Text(
                  post.title,
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Expanded(child: Text(post.description)),
              Container(
                  alignment: Alignment.center,
                  color: Colors.amber,
                  width: double.infinity,
                  height: 60,
                  child: Text(post.date ?? ""))
            ],
          ))
        ],
      )),
    );
  }
}
