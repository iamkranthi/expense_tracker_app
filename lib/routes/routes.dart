

import 'package:flutter/material.dart';
import 'package:expense_tracker_app/pages/auth_page.dart';
import 'package:expense_tracker_app/pages/homepage.dart';
import 'package:expense_tracker_app/pages/login_signup_page.dart';
import 'package:expense_tracker_app/pages/on_boarding_screen.dart';
import 'package:expense_tracker_app/pages/splash_screen.dart';

//*Route names

const String homePage = 'home';
const String splashPage = 'splash';
const String onboardingpage = 'onboarding';
const String loginpage = 'login';
const String authpage = 'auth';

//*controller of page flo
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashPage:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case onboardingpage:
      return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
    case loginpage:
      return MaterialPageRoute(builder: (context) => const LoginSiginUpPage());
    case authpage:
      return MaterialPageRoute(builder: (context) => const AuthPage());
    case  homePage:
      return MaterialPageRoute(builder: (context) => const Homepage());
    default:
      throw("Route doest not exist");
  }
}
