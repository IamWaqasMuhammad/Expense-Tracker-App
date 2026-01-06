import 'package:expense_tracker_app/app_barrels.dart';

class PinCodeImageWidget extends StatelessWidget {
  const PinCodeImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        image: AssetImage(AppImageAssets.pinCodeImage),
        height: Responsive.hp(25),
        width: Responsive.wp(50),
      ),
    );
  }
}
