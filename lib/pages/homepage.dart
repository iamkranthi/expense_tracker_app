import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //pageindicator
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpacer(60),
         const CustomAppBAr(),
          verticalSpacer(25),
          const Icontext(text1: "UPI id's "),
          verticalSpacer(18),
          UpicardScroller(
            controller: _controller,
          ),
          verticalSpacer(10),
          SmoothController(controller: _controller),
          verticalSpacer(25),
          const TaskBarItems(),
        ],
      ),
    );
  }
}

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
        children: [
          const UpiCards(
            upiIcon: 'assets/images/google-pay-icon.png',
            upiName: "Gpay",
            upiId: "8712325133@okhdfc",
            color: Colors.white,
          ),
          UpiCards(
            upiIcon: 'assets/images/phonepe-logo-icon.png',
            upiId: '8712325133@ybl',
            upiName: 'Phone pay',
            color: Colors.purple.shade100,
          ),
          const UpiCards(
              upiIcon: 'assets/images/paytm-icon.png',
              upiName: 'paytm',
              upiId: '8712325133@paytm'),
          const UpiCards(
              upiIcon: 'assets/images/amazon_pay_logo.png',
              upiId: '8712325133@ybl',
              upiName: 'amazon pay',
              color: Colors.white),
        ],
      ),
    );
  }
}

class TaskBarItems extends StatelessWidget {
  const TaskBarItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            // TODO add expense page
          },
          child: const TaskBarWidgets(
            ticon: Icons.send,
            title: 'Expenses',
            taskCardcolor: Colors.yellow,
          ),
        ),
        GestureDetector(
          onTap: () {
            //  TODO add expense page
          },
          child: const TaskBarWidgets(
            title: 'Income',
            ticon: Icons.account_balance_wallet,
            taskCardcolor: Colors.greenAccent,
          ),
        ),
      ],
    );
  }
}

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
