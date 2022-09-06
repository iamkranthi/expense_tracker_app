import 'package:expense_tracker_app/pages/widgets/task_bar_widget.dart';
import 'package:flutter/material.dart';

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
            //  TODO add income page
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