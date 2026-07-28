import 'package:animooo/features/authentication/presentation/views/confirm_otp_view.dart';
import 'package:animooo/features/authentication/presentation/views/forget_password_view.dart';
import 'package:animooo/features/authentication/presentation/views/login_view.dart';
import 'package:animooo/features/authentication/presentation/views/sign_up_view.dart';
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
      GoRoute(
        path: LoginView.routeName,
        builder: (context, state) => LoginView(),
      ),
      GoRoute(
        path: SignUpView.routeName,
        builder: (context, state) => SignUpView(),
      ),
      GoRoute(
        path: ForgetPasswordView.routeName,
        builder: (context, state) => ForgetPasswordView(),
      ),
      GoRoute(
        path: ConfirmOTPCodeView.routeName,
        builder: (context, state) => ConfirmOTPCodeView(),
      ),
    ],
  );
}
