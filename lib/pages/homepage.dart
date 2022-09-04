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
          const Icontext(text1: "UPI id's ", icon: CupertinoIcons.add_circled,),
          verticalSpacer(18),
          UpicardScroller(controller: _controller),
          verticalSpacer(10),
          Center(child: SmoothController(controller: _controller, count: 4,)),
          verticalSpacer(25),
          const TaskBarItems(),
          verticalSpacer(28),
       const RecentListView(),
        ],
      ),
    );
  }
}

