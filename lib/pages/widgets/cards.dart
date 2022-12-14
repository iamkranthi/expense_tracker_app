import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';

class UpiCards extends StatelessWidget {
  final String upiIcon;
  final String upiName;
  final String upiId;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  const UpiCards(
      {Key? key,
      required this.upiIcon,
      required this.upiName,
      required this.upiId,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Card(
          color: color,
          margin: const EdgeInsets.only(left: 48),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: SizedBox(
            height: size.height / 11,
            width: size.width,
          ),
        ),
        Positioned(
          left: size.height / 10,
          top: 5,
          child: Text(upiName, style: upiIdNameStyle),
        ),
        Positioned(
          left: size.height / 6.8,
          top: 32,
          child: Text(upiId, style: upiIdStyle),
        ),
        Positioned(
          left: size.height / 28,
          top: 6,
          child: SizedBox(
            height: size.height / 13,
            width: size.width / 13,
            child: Image.asset(upiIcon),
          ),
        ),
        Positioned(
          right: size.height / 160,
          top: 18,
          child:
              const Icon(CupertinoIcons.doc_on_clipboard, color: Colors.black),
        ),
        Positioned(
          top: 60,
          right: size.height / 50,
          child: const Text("Tap to copy"),
        ),
      ],
    );
  }
}

class RecentTranscard extends StatelessWidget {
  final String category;
  final String time;
  final String amount;
  final String amounttype;
  final String source;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  const RecentTranscard({
    Key? key,
    required this.category,
    required this.time,
    required this.amount,
    required this.amounttype,
    required this.source, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: color,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: SizedBox(
              height: size.height / 9.6,
              width: size.width,
            ),
          ),
        ),
        Positioned(
          left: 40,
          top: 9,
          child: Row(
            children: [
              Text("category:", style: rHeading),
              horizontalSpacer(10),
              Text(category, style: rSubtitle),
            ],
          ),
        ),
        Positioned(
          left: 220,
           top: 9,
          child: Row(
            children: [
              Text("Date:", style: rHeading),
              horizontalSpacer(4),
              Text(time, style: rSubtitle),
            ],
          ),
        ),
        Positioned(
          left: 40,
          top: 40,
          child: Row(
            children: [
              Text("Amount:", style: rHeading),
              horizontalSpacer(6),
              Text(amount, style: rSubtitle),
              horizontalSpacer(4),
              Text(amounttype, style: rSubtitle),
            ],
          ),
        ),
        Positioned(
          left: 150,
          top: 70,
          child: Row(
            children: [
              Text("Source:", style: rHeading),
              horizontalSpacer(6),
              Text(source, style: rSubtitle),
            ],
          ),
        ),
      ],
    );
  }
}
