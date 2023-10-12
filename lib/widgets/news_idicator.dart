import 'package:flutter/material.dart';

class NewsIndicator extends StatelessWidget {
  const NewsIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
      padding: EdgeInsets.only(top: 190),
      child: Center(
        child: Transform.scale(
          scale: 1.5,
          child: CircularProgressIndicator(
            backgroundColor: Colors.black,
            color: Colors.deepOrange,
            strokeWidth: 2,
          ),
        ),
      ),
    ));
  }
}
