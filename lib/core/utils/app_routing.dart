import 'package:animooo/features/splash_view/presentation/views/custom_splash_view.dart';
import 'package:animooo/features/splash_view/presentation/views/simple_splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: SimpleSplashView.routeName,
        builder: (context, state) => SimpleSplashView(),
      ),
      GoRoute(
        path: CustomSplashView.routeName,
        builder: (context, state) => CustomSplashView(),
      ),
    ],
  );
}
