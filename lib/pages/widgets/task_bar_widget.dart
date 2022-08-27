import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';

class TaskBarWidgets extends StatelessWidget {
  final String title;
  final IconData ticon;
  final Color taskCardcolor;
  const TaskBarWidgets({
    Key? key,
    required this.title,
    required this.ticon,
    required this.taskCardcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      color: taskCardcolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: size.height/12.2,
        width: size.width/2.6,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: tasktextStyle,
            ),
            Icon(
              ticon,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
