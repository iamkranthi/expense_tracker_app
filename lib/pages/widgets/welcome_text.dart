import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final String text1;

  const WelcomeText({
    Key? key,
    required this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Text(text1, style: headingStyle),
        ],
      ),
    );
  }
}

class Icontext extends StatelessWidget {
  final String text1;
  final IconData cicon;
  const Icontext({
    Key? key,
    required this.text1,
    required this.cicon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Text(text1, style: iconHeadingStyle),
          horizontalSpacer(2),
          const Icon(Iconsax.arrow_circle_right),
          horizontalSpacer(228),
          Icon(cicon, color: Colors.green),
        ],
      ),
    );
  }
}
