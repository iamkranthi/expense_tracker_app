import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';


class PasswdInputWidget extends StatelessWidget {
  final String hintText;
  final IconData logicon;

  const PasswdInputWidget({
    super.key,
    required this.hintText,
    required this.logicon,
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
        hintText: hintText,hintStyle: tasktextStyle,
        suffixIcon: const Icon(
          Iconsax.password_check,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}