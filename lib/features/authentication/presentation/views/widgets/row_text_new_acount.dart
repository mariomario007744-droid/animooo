import 'package:animooo/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RowTextNewAcount extends StatelessWidget {
  const RowTextNewAcount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account? ',
          style: Styles.fontSize14.copyWith(fontWeight: FontWeight.w500),
        ),
        GestureDetector(
          child: Text(
            'Sign up now',
            style: Styles.fontSize14.copyWith(
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}