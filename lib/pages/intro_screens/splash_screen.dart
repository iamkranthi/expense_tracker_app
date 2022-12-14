import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/routes/routes.dart' as route;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateOnBoard();
    super.initState();
  }

  void _navigateOnBoard() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    if (!mounted) return;
    Navigator.pushNamed(context, route.onboardingpage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.pushNamed(context, route.onboardingpage),
        child: Stack(
          children: [
            Positioned(
              top: 160,
              right: 5,
              left: 5,
              child: Image.asset(
                'assets/images/app__logo-removebg-preview.png',
                height: 400,
              ),
            ),
            Positioned(
              left: 60,
              top: 500,
              child: Text(
                "An Expense Tracker",
                style: headingStyle,
              ),
            ),
            const Positioned(
              left: 186,
              top: 440,
              child: CircularProgressIndicator(
                backgroundColor: Colors.blueAccent,
                color: Colors.yellowAccent,
                strokeWidth: 2.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
