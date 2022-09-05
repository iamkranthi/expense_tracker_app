import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/routes/routes.dart' as route;
import 'package:flutter/services.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        child: Column(
          children: [
            verticalSpacer(80),
            const WelcomeText(text1: 'Almost done'),
            verticalSpacer(15),
            const NumberWidget(number: 'OTP just sent to', text: '+91-82*******2',),
            verticalSpacer(40),
            const Icontext(
              text1: 'Enter OTP',
              icon: Icons.arrow_downward_outlined,
            ),
            verticalSpacer(17),
            const OtpForm(),
            verticalSpacer(20),
            const NumberWidget(number: 'Resend code after ', text: '1.39s'),
            verticalSpacer(60),
            const LogButton(logs: 'VERIFY')
            // const OtpForm(),
          ],
        ),
      ),
    );
  }
}

class NumberWidget extends StatelessWidget {
  final String number;
  final String text;
  const NumberWidget({
    super.key,
    required this.number, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          number,
          style: const TextStyle(color: Colors.white),
        ),
        horizontalSpacer(6),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          OtpBox(),
          OtpBox(),
          OtpBox(),
          OtpBox(),
        ],
      ),
    );
  }
}

class OtpBox extends StatelessWidget {
  const OtpBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 68,
      width: 64,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(14)),
      child: TextFormField(
        style: headingStyle,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
          if (value.isNotEmpty) {
            FocusScope.of(context).setFirstFocus;
          }
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        cursorWidth: 1.1,
        cursorColor: Colors.white,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
            border: InputBorder.none, hintText: '*', hintStyle: headingStyle),
      ),
    );
  }
}
