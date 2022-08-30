import 'package:expense_tracker_app/export/exports.dart';


class OnBoardPage1 extends StatelessWidget {
  const OnBoardPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpacer(180),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Lottie.asset('assets/lottie/intro1.json'),
        ),
        verticalSpacer(35),
        AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
              "Have You Ever Tracked",
              textStyle: headingStyle,
             
            ),
          ],
        ),
        AnimatedTextKit(animatedTexts: [
          TyperAnimatedText(
            " All your expenses",
            textStyle: headingStyle,
           curve: Curves.easeInOutQuad
          ),
        ])
      ],
    );
  }
}
