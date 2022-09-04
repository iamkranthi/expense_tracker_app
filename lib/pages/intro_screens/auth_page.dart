

import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/routes/routes.dart' as route;

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        // padding: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            verticalSpacer(80),
            const WelcomeText(text1: 'Almost done '),
            verticalSpacer(15),
            const NumberWidget(number: 'OTP just sent to +91-82*******2 '),
            verticalSpacer(40),
            const Icontext(
              text1: 'Enter OTP',
              icon: Icons.arrow_downward_outlined,
            ),
            const OtpForm(),
           // const OtpForm(),
          ],
        ),
      ),
    );
  }
}

class NumberWidget extends StatelessWidget {
  final String number;
  const NumberWidget({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      number,
      style: const TextStyle(color: Colors.white),
    );
  }
}

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        children:  [
          SizedBox(
            height: 68,
            width: 64,
            child: TextField(
              style: Theme.of(context).textTheme.headlineMedium,
              keyboardType: TextInputType.number,
            ),
          )
        ],
      ),
    );
  }
}
