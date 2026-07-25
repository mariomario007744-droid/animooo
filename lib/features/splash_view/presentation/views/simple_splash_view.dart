import 'package:animooo/core/widgets/Logo.dart';
import 'package:animooo/features/splash_view/presentation/views/custom_splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SimpleSplashView extends StatefulWidget {
  const SimpleSplashView({super.key});
  static const String routeName = '/';

  @override
  State<SimpleSplashView> createState() => _SimpleSplashViewState();
}

class _SimpleSplashViewState extends State<SimpleSplashView> {
  @override
  void initState() {
    super.initState();
    navigation();
  }

  navigation() async {
    Future.delayed(
      const Duration(seconds: 3),
      () => context.go(CustomSplashView.routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Logo()));
  }
}
