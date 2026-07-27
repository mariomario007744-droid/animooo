import 'package:animooo/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AuthToggleRow extends StatelessWidget {
  const AuthToggleRow({
    super.key,
    required this.text,
    required this.navigationText,
    required this.onTap,
  });
  final String text;
  final String navigationText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: Styles.fontSize14.copyWith(fontWeight: FontWeight.w500),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            navigationText,
            style: Styles.fontSize14.copyWith(
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
