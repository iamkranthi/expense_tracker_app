import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 4, left: 29, right: 29),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(38),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
        child: GNav(
          gap: 6,
          // backgroundColor: Colors.black45,
          color: Colors.white,
          activeColor: Colors.black,
          tabBackgroundColor: ConstantColors.iconColor,
          iconSize: 28,
          haptic: true,
          style: GnavStyle.google,
          padding: const EdgeInsets.all(18),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
              textColor: Colors.black,
              onPressed: () {},
            ),
            GButton(
              icon: Iconsax.add,
              text: "Add",
              textColor: Colors.black,
              onPressed: () {},
            ),
            GButton(
              icon: CupertinoIcons.graph_square_fill,
              text: "Stats",
              onPressed: () {},
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
