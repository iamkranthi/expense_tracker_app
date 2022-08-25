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
              //!navgation
              //*print("menu");
            },
            child: Material(
              elevation: 15,
              child: ClayContainer(
                depth: 20,
                spread: 0.8,
                surfaceColor: ConstantColors.iconColor,
                height: 48,
                width: 50,
                parentColor: Colors.white,
                curveType: CurveType.convex,
                // borderRadius: 20,

                child: Icon(firstIcon),
              ),
            ),
          ),
          verticalSpacer(14),
          GestureDetector(
            onTap: () {
              //!navgation
              //*print("notifications");
            },
            child: Material(
              elevation: 15,
              child: ClayContainer(
                depth: 20,
                spread: 0.8,
                surfaceColor: ConstantColors.iconColor,
                height: 48,
                width: 50,
                parentColor: Colors.white,
                child: Icon(secondIcon),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
