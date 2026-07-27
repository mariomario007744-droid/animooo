import 'package:animooo/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackArrowAppBar extends StatelessWidget {
  const BackArrowAppBar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        Text(text, style: Styles.fontSize20),
      ],
    );
  }
}