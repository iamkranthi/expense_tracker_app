import 'package:flutter/material.dart';
import 'package:expense_tracker_app/pages/intro_screens/auth_page.dart';
import 'package:expense_tracker_app/pages/homepage.dart';
import 'package:expense_tracker_app/pages/intro_screens/login.dart';
import 'package:expense_tracker_app/pages/intro_screens/on_boarding_screen.dart';
import 'package:expense_tracker_app/pages/intro_screens/splash_screen.dart';
import 'package:expense_tracker_app/pages/intro_screens/signup.dart';
//*Route names

const String homePage = 'home';
const String splashPage = 'splash';
const String onboardingpage = 'onboarding';
const String loginpage = 'login';
const String signuppage = 'signup';
const String authpage = 'auth';

//*controller of page flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashPage:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case onboardingpage:
      return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
    case loginpage:
      return MaterialPageRoute(builder: (context) => const LoginPage());
      case signuppage:
      return MaterialPageRoute(builder: (context) => const SignUpPage());
    case authpage:
      return MaterialPageRoute(builder: (context) => const AuthPage());
    case homePage:
      return MaterialPageRoute(builder: (context) => const Homepage());
    default:
      throw ("Route doest not exist");
  }
}
