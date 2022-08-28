import 'package:expense_tracker_app/export/exports.dart';
import 'package:flutter/material.dart';

class UpiCards extends StatelessWidget {
  final String upiIcon;
  final String upiName;
  final String upiId;
  final color;
  const UpiCards(
      {Key? key,
      required this.upiIcon,
      required this.upiName,
      required this.upiId, this.color})
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
            width: size.width / 1,
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
