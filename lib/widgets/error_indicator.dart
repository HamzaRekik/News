import 'package:flutter/material.dart';

class ErrorMsg extends StatelessWidget {
  const ErrorMsg({
    required this.msg,
    super.key,
  });

  final String msg;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(top: 190),
        child: Center(
          child: Text(
            msg,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
