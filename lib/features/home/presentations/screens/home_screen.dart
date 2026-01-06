
import '../../../../../app_barrels.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        body: SafeArea(
          top: false,
          child: Stack(
            children: [

              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: Responsive.hp(65),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: isDark ? AppColors.cyprus : AppColors.lightGreen,
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
      ),
    );
  }
}
