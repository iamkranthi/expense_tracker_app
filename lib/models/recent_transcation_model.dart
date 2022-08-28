import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';

class RecentListView extends StatelessWidget {
  const RecentListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 2.8,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Recent Transactions", style: iconHeadingStyle),
             RecentTranscard(
              category: 'Rent',
             time: '28/06/2022',
              amount: '25,000',
              amounttype: '/debit',
              source: 'cash',
              color: Colors.amber.shade200,
            ),
             RecentTranscard(
              category: 'Food',
             time: '28/06/2022',
              amount: '5,00',
              amounttype: '/debit',
              source: 'card',
              color: Colors.cyanAccent.shade100,
            ),
            const RecentTranscard(
              category: 'shopping',
            time: '28/06/2022',
              amount: '5,000',
              amounttype: '/debit',
              source: 'upi',
              color: Colors.greenAccent,
            ),
             RecentTranscard(
              category: 'fees',
             time: '28/06/2022',
              amount: '5,000',
              amounttype: '/credit',
              source: 'cash',
              color: Colors.red.shade100,
            ),
          ],
        ),
      ),
    );
  }
}
