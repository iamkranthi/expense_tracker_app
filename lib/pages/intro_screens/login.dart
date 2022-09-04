import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/routes/routes.dart' as route;
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Lottie.asset('assets/lottie/login.json', width: 280, height: 280),
              const WelcomeText(text1: "Hey"),
              const WelcomeText(text1: 'Login Now'),
              verticalSpacer(20),
              const LoginFieldInput(
                hintText: 'Enter your mobile number',
                logicon: CupertinoIcons.phone_circle_fill,
              ),
              verticalSpacer(20),
              const TextFieldContanier(
                child: PasswdInputWidget(
                  hintText: 'Enter Password',
                  logicon: CupertinoIcons.lock_circle_fill,
                ),
              ),
              verticalSpacer(22),
              const LogButton(
                logs: 'Login',
              ),
              verticalSpacer(5),
              const Text(
                'OR ELSE',
                style: TextStyle(color: Colors.white),
              ),
              verticalSpacer(7),
              SignInButton(
                Buttons.Google,
                onPressed: () {},
                padding: const EdgeInsets.all(8),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              verticalSpacer(20),
              GestureDetector(
                onTap: () =>Navigator.pushNamed(context, route.signuppage),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Icontext(text1: 'Dont have account? signup', icon: Iconsax.forward,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

