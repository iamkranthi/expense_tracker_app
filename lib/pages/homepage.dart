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
          const Header(
              firstIcon: Iconsax.menu, secondIcon: Iconsax.notification),
          verticalSpacer(10),
          const WelcomeText(text1: "Dashboard"),
          verticalSpacer(10),
          const Icontext(text1: "Cards"),
          verticalSpacer(6),
          CardsLayout(controller: _controller),
          verticalSpacer(10),
          SmoothController(controller: _controller),
          verticalSpacer(15),
          const TaskBarItems(),
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
            title: 'Expenses', taskCardcolor: Colors.yellow,
          ),
        ),
        GestureDetector(
          onTap: () {
            //  TODO add expense page
          },
          child: const TaskBarWidgets(
           
            title: 'Income',
            ticon: Icons.account_balance_wallet, taskCardcolor: Colors.greenAccent,
          ),
        ),
      ],
    );
  }
}

class CardsLayout extends StatelessWidget {
  const CardsLayout({
    Key? key,
    required PageController controller,
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: const [
          CustomCard(
            cardnumber: '58XX XXXX XXXX XX76',
            cvv: 565,
            expdate: '10/23',
          ),
          CustomCard(
            cardnumber: '58XX XXXX XXXX XX76',
            cvv: 565,
            expdate: '10/23',
          ),
          CustomCard(
            cardnumber: '58XX XXXX XXXX XX76',
            cvv: 565,
           expdate: '10/23',
          ),
          CustomCard(
            cardnumber: '58XX XXXX XXXX XX76',
            cvv: 565,
            expdate: '10/23',
          ),
        ],
      ),
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
        effect:  ExpandingDotsEffect(
          dotColor: Colors.lightBlue.shade200,
          activeDotColor: Colors.white,
          spacing: 6,
        ),
      ),
    );
  }
}
