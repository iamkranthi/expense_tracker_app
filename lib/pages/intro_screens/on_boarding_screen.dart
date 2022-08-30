import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/routes/routes.dart' as route;

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _controller = PageController();

  //track of pages
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: ((index) {
              setState(() {
                onLastPage = (index == 1);
              });
            }),
            children: [
              Container(
                color: Colors.black,
                child: const OnBoardPage1(),
              ),
              Container(
                color: Colors.black,
                child: const OnBoardPage2(),
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmoothController(
                  controller: _controller,
                  count: 2,
                ),
                onLastPage
                    ? FloatingActionButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, route.loginpage),
                        child: const Icon(
                          Iconsax.forward,
                        ),
                      )
                    : FloatingActionButton(
                        onPressed: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        },
                        child: const Icon(Iconsax.forward),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
