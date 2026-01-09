
import '../../../../../app_barrels.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        //statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: isDark
            ? AppColors.fenceGreen
            : AppColors.caribbeanGreen,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Align(
              alignment: AlignmentGeometry.topCenter,
              child: Text('Transaction Screen',style: Theme.of(context).textTheme.headlineLarge,),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: Responsive.hp(70),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: isDark ? AppColors.cyprus : AppColors.honeydew,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Responsive.wp(5)),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
