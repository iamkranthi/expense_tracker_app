import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final IconData firstIcon;
  final IconData secondIcon;
  const Header({Key? key, required this.firstIcon, required this.secondIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              //TODO Add sidebar page
            },
            child: ClayContainer(
              depth: 20,
              spread: 0.8,
              surfaceColor: Colors.black,
              height: 48,
              width: 50,
              parentColor: Colors.white,
              borderRadius: 20,
              child: Icon(firstIcon),
            ),
          ),
          verticalSpacer(14),
          GestureDetector(
            onTap: () {
              //TODO Add notification page
            },
            child: ClayContainer(
              depth: 20,
              spread: 0.8,
              surfaceColor: Colors.black,
              height: 48,
              width: 50,
              parentColor: Colors.white,
              borderRadius: 20,
              child: Icon(secondIcon),
            ),
          ),
        ],
      ),
    );
  }
}
