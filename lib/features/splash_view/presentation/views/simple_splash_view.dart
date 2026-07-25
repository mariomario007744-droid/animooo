import 'package:animooo/core/widgets/Logo.dart';
import 'package:flutter/material.dart';

class SimpleSplashScrean extends StatelessWidget {
  const SimpleSplashScrean({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Logo(),
      ),
    );
  }
}

