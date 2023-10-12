import 'package:flutter/material.dart';
import 'package:news/models/models.dart';
import 'package:news/views/single_post_view.dart';

class PostWidget extends StatelessWidget {
  PostWidget({required this.post});
  final Post post;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SinglePostView(
            post: post,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: 480,
        height: 380,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 224, 207, 227),
            borderRadius: BorderRadius.circular(20)),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.network(
              post.image ??
                  "https://sesupport.edumall.jp/hc/article_attachments/900009570963/noImage.jpg",
              fit: BoxFit.cover,
              width: 480,
              height: 190,
            ),
          ),
          Container(
            padding: EdgeInsets.all(9),
            child: Column(children: [
              Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                post.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                post.description ?? "No desciption",
                style: TextStyle(fontSize: 21),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
