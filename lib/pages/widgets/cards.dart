import 'package:expense_tracker_app/export/exports.dart';

class CustomCard extends StatelessWidget {
  final String cardnumber;
  final String expdate;
  final int cvv;

  const CustomCard({
    Key? key,
    required this.cardnumber,
    required this.expdate,
    required this.cvv,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      padding: const EdgeInsets.only(left: 13, right: 18, top: 6),
      height: size.height / 20,
      decoration: BoxDecoration(
        color: ConstantColors.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Card number", style: subHeadingStyle),
              SizedBox(
                height: size.height / 18,
                width: size.width / 6,
                child: const Image(
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
    );
  }
}
