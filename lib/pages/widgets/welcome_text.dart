import 'package:expense_tracker_app/export/exports.dart';

class WelcomeText extends StatelessWidget {
  final String text1;

  const WelcomeText({
    Key? key,
    required this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        children: [
          Text(text1, style: headingStyle),
        ],
      ),
    );
  }
}

class Icontext extends StatelessWidget {
  final String text1;
  final IconData icon;
  const Icontext({
    Key? key,
    required this.text1, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text1, style: iconHeadingStyle),
           Icon(icon),
        ],
      ),
    );
  }
}
//CupertinoIcons.add_circled