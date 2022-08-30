import 'package:expense_tracker_app/export/exports.dart';


class OnBoardPage2 extends StatelessWidget {
  const OnBoardPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpacer(100),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Lottie.asset('assets/lottie/intro2.json'),
        ),
        verticalSpacer(35),
        Text("This is our smart legder ",style: headingStyle),
        verticalSpacer(10),
        Padding(
          padding: const EdgeInsets.only(left:18.0),
          child: Text(" It can keep all Your transactions in   one place ",style: iconHeadingStyle),
        )
      ],
    );
  }
}
