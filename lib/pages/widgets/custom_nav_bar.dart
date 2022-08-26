import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 5, right: 5),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
        child: GNav(
          gap: 8,
          // backgroundColor: Colors.black45,
          color: Colors.white,
          activeColor: Colors.black,
          tabBackgroundColor: ConstantColors.iconColor,
          iconSize: 28,
          haptic: true,
          style: GnavStyle.google,
          padding: const EdgeInsets.all(20),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
              textColor: Colors.black,
              onPressed: () {},
            ),
            GButton(
              icon: Iconsax.add,
              text: "search",
              textColor: Colors.black,
              onPressed: () {},
            ),
            GButton(
              icon: CupertinoIcons.graph_square_fill,
              text: "axess",
              onPressed: () {},
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
