import 'package:animooo/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomSplashView extends StatelessWidget {
  const CustomSplashView({super.key});
  static const String routeName = '/custom_splash_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AssetsData.backgroundCustomSplashView, fit: BoxFit.fill),
          Center(child: Image.asset(AssetsData.logoLight)),
        ],
      ),
    );
  }
}
