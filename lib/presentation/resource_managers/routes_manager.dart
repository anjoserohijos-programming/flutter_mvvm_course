import 'package:flutter/material.dart';
import 'package:flutter_mvvm_course/presentation/view/applicationError/applicationError.dart';
import 'package:flutter_mvvm_course/presentation/view/forgotPassword/forgotPassword.dart';
import 'package:flutter_mvvm_course/presentation/view/login/login.dart';
import 'package:flutter_mvvm_course/presentation/view/main/main.dart';
import 'package:flutter_mvvm_course/presentation/view/onboarding/onboarding.dart';
import 'package:flutter_mvvm_course/presentation/view/pageNotFound/pageNotFound.dart';
import 'package:flutter_mvvm_course/presentation/view/register/register.dart';
import 'package:flutter_mvvm_course/presentation/view/splash/splash.dart';
import 'package:flutter_mvvm_course/presentation/view/storeDetails/storeDetails.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onboarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
  static const String applicationError = "/appError";
  static const String pageNotFound = "/pageNotFound";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnboardingView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailsView());
      case Routes.applicationError:
        return MaterialPageRoute(builder: (_) => ApplicationErrorView());
      default:
        return MaterialPageRoute(builder: (_) => PageNotFoundView());
    }
  }

  static Route<dynamic> undefinedRoute(){
    return MaterialPageRoute(builder: (_) => PageNotFoundView());
  }
}
