import 'package:animooo/core/utils/app_routing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AnimoooApp());
}

class AnimoooApp extends StatelessWidget {
  const AnimoooApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
    );
  }
}
