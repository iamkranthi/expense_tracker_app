import 'package:expense_tracker_app/export/exports.dart';

class CustomCard extends StatelessWidget {
  final String cardnumber;
  final String expdate;
  final int cvv;

  // ignore: prefer_typing_uninitialized_variables
  final color;
  const CustomCard({
    Key? key,
    required this.cardnumber,
    required this.expdate,
    required this.cvv,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 200,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Card number", style: subHeadingStyle),
                const SizedBox(
                  height: 40,
                  width: 100,
                  child: Image(
                    image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/4/41/Visa_Logo.png',
                    ),
                  ),
                ),
              ],
            ),
            verticalSpacer(10),
            Row(
              children: [
                Text(cardnumber),
              ],
            ),
            verticalSpacer(35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Expiry date"),
                Text("CVV"),
              ],
            ),
            verticalSpacer(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(expdate),
                Text(cvv.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
