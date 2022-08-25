import 'package:expense_tracker_app/export/exports.dart';
import 'package:expense_tracker_app/pages/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavBar(),
      body: Column(
        children: [
          verticalSpacer(60),
          const Header(
              firstIcon: Iconsax.menu, secondIcon: Iconsax.notification),
          // verticalSpacer(80),
        ],
      ),
    );
  }
}
