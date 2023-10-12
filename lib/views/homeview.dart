import 'package:flutter/material.dart';
import 'package:news/widgets/categories_listview.dart';
import 'package:news/widgets/posts_listview_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(5, 4, 44, 1),
            elevation: 0,
            centerTitle: true,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "News",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  "Cloud",
                  style:
                      TextStyle(color: Colors.deepOrangeAccent, fontSize: 25),
                )
              ],
            )),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            PostsListViewBuilder(
              category: "general",
            )
          ],
        ));
  }
}
