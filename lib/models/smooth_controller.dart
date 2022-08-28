import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothController extends StatelessWidget {
  const SmoothController({
    Key? key,
    required PageController controller,
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
        controller: _controller,
        count: 4,
        effect: ExpandingDotsEffect(
          dotColor: Colors.lightBlue.shade200,
          activeDotColor: Colors.white,
          spacing: 6,
        ),
      ),
    );
  }
}
