import 'package:animooo/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TiteleForgetScreens extends StatelessWidget {
  const TiteleForgetScreens({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: Styles.fontSize20,softWrap: true,);
  }
}
