import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';

class PasswdInputWidget extends StatelessWidget {
  final String hintText;
  final IconData logicon;
  final IconData lasticon;

  const PasswdInputWidget({
    super.key,
    required this.hintText,
    required this.logicon, required this.lasticon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(
          logicon,
          color: Colors.black,
        ),
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: tasktextStyle,
        suffixIcon:  Icon(
          lasticon,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
//