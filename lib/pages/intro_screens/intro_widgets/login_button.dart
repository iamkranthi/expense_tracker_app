import 'package:expense_tracker_app/export/exports.dart';

class LogButton extends StatelessWidget {
  final String logs;
  const LogButton({
    super.key,
    required this.logs,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 60,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 55,vertical: 16),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ConstantColors.iconColor
        ),
        child: Text(
          logs,
          style: rHeading,
        ),
      ),
    );
  }
}
