import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/routes/routes.dart' as route;

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Lottie.asset('assets/lottie/signup.json',
                  height: 225, width: 200),
              const WelcomeText(text1: "Create New Account"),
              verticalSpacer(16),
              const Icontext(
                  text1: '  Start for free', icon: Iconsax.arrow_down),
              verticalSpacer(16),
              const LoginFieldInput(
                hintText: 'Enter your mobile number',
                logicon: CupertinoIcons.phone_circle_fill,
              ),
              verticalSpacer(16),
              const TextFieldContanier(
                child: PasswdInputWidget(
                  hintText: 'Create a password',
                  logicon: CupertinoIcons.lock_circle_fill,
                  lasticon: Iconsax.password_check,
                ),
              ),
              verticalSpacer(16),
              const TextFieldContanier(
                child: PasswdInputWidget(
                  hintText: 'Confirm your password',
                  logicon: CupertinoIcons.lock_circle_fill,
                  lasticon: Iconsax.password_check,
                ),
              ),
              verticalSpacer(20),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, route.authpage),
                child: const LogButton(
                  logs: 'Sign in',
                ),
              ),
              verticalSpacer(6),
              const Text(
                'OR ELSE',
                style: TextStyle(color: Colors.white),
              ),
              verticalSpacer(7),
              SignInButton(
                Buttons.Google,
                onPressed: () {},
                padding: const EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              verticalSpacer(13),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, route.loginpage),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 11.0),
                  child: Icontext(
                    text1: 'Already have an account',
                    icon: Iconsax.forward,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
