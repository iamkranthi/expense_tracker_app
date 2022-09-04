import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';
//import 'package:expense_tracker_app/routes/routes.dart' as route;

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset('assets/lottie/auth.json', height: 225, width: 240),
          const Icontext(text1: "To Add Extra Security", icon: Icons.password),
          const WelcomeText(text1: 'Setup Passcode'),
        ],
      ),
    );
  }
}
