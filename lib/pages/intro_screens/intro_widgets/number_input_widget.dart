import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginFieldInput extends StatelessWidget {
  final String hintText;
  final IconData logicon;

  const LoginFieldInput({
    super.key,
    required this.hintText,
    required this.logicon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContanier(
      child: TextField(
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(10),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          icon: Icon(
            logicon,
            color: Colors.black,
            
          ),
          hintText: hintText,
          hintStyle: tasktextStyle,
          border: InputBorder.none,
        
        ),
      ),
    );
  }
}
