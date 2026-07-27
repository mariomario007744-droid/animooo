import 'package:flutter/material.dart';

class CustomCircleIcon extends StatelessWidget {
  const CustomCircleIcon({super.key, required this.checker});

  final bool checker;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.circle,
      color: checker ? Color(0xff08A43A) : Color(0xffFC1B1A),
      size: 8,
    );
  }
}
