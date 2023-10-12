import 'package:news/models/models.dart';
import 'package:flutter/material.dart';
import 'package:news/views/category_view.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: category.query,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
        width: 220,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), // Adjust the opacity as needed
                BlendMode.darken,
              ),
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          category.title,
          style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 224, 207, 227),
              fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
