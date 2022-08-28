import 'package:expense_tracker_app/pages/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const[
        WelcomeText(text1: "Dashboard"),
         Padding(
           padding: EdgeInsets.only(right:25.0),
           child: CircleAvatar(backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/images/profile.png'),
            maxRadius: 40,
        ),
         )
      ],
    );
  }
}
