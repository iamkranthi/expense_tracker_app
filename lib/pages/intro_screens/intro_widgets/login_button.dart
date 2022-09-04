import 'package:expense_tracker_app/export/exports.dart';
//import 'package:expense_tracker_app/pages/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/routes/routes.dart' as route;
class LogButton extends StatelessWidget {
  final String logs;
  const LogButton({
    super.key,
    required this.logs,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 60,
      child: ElevatedButton(
        onPressed: () =>Navigator.pushNamed(context, route.authpage),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
          backgroundColor: ConstantColors.iconColor,
        ),
        child: Text(
          logs,
          style: rHeading,
        ),
      ),
    );
  }
}