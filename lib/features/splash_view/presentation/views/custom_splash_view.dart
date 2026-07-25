import 'package:animooo/core/utils/assets_data.dart';
import 'package:animooo/features/authentication/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSplashView extends StatefulWidget {
  const CustomSplashView({super.key});
  static const String routeName = '/custom_splash_view';

  @override
  State<CustomSplashView> createState() => _CustomSplashViewState();
}

class _CustomSplashViewState extends State<CustomSplashView> {
  @override
  void initState() {
    super.initState();
    navigation();
  }

  navigation() async {
    Future.delayed(
      const Duration(seconds: 3),
      () => context.go(LoginView.routeName),
    );
  }

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
