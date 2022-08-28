import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';

class UpicardScroller extends StatelessWidget {
  const UpicardScroller({
    Key? key,
    required PageController controller,
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 10,
      width: size.width / 1.09,
      child: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          const UpiCards(
            upiIcon: 'assets/images/google-pay-icon.png',
            upiName: "Gpay",
            upiId: "90XXXXXXXX@okhdfc",
            color: Colors.white,
          ),
          UpiCards(
            upiIcon: 'assets/images/phonepe-logo-icon.png',
            upiId: '90XXXXXXXX@ybl',
            upiName: 'Phone pay',
            color: Colors.purple.shade100,
          ),
          const UpiCards(
              upiIcon: 'assets/images/paytm-icon.png',
              upiName: 'paytm',
              upiId: '90XXXXXXXX@paytm'),
          const UpiCards(
              upiIcon: 'assets/images/amazon_pay_logo.png',
              upiId: '90XXXXXXXX@apl',
              upiName: 'amazon pay',
              color: Colors.white),
        ],
      ),
    );
  }
}