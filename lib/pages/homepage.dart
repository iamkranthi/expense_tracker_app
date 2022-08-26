import 'package:expense_tracker_app/export/exports.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpacer(60),
          const Header(
              firstIcon: Iconsax.menu, secondIcon: Iconsax.notification),
          verticalSpacer(10),
          const WelcomeText(text1: "welcome"),
          verticalSpacer(18),
          const Icontext(text1: "Cards", cicon: Iconsax.add_circle),
          verticalSpacer(11),
          SizedBox(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomCard(
                  cardnumber: '58XX XXXX XXXX XX76',
                  cvv: 565,
                  expdate: '432',
                  color: Colors.purple.shade100,
                ),
                CustomCard(
                  cardnumber: '58XX XXXX XXXX XX76',
                  cvv: 565,
                  expdate: '432',
                  color: Colors.green.shade100,
                ),
                CustomCard(
                  cardnumber: '58XX XXXX XXXX XX76',
                  cvv: 565,
                  expdate: '432',
                  color: Colors.blue.shade100,
                ),
                CustomCard(
                  cardnumber: '58XX XXXX XXXX XX76',
                  cvv: 565,
                  expdate: '432',
                  color: Colors.yellow.shade100,
                ),
              ],
            ),
          ),
          Text(
            "data",
            style: headingStyle,
          )
        ],
      ),
    );
  }
}
