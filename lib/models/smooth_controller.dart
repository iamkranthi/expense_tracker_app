import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothController extends StatelessWidget {
  final int count;
  const SmoothController({
    Key? key,
    required PageController controller, required this.count,
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _controller,
      count: count,
      effect: ExpandingDotsEffect(
        dotColor: Colors.lightBlue.shade200,
        activeDotColor: Colors.white,
        spacing: 6,
      ),
    );
  }
}
