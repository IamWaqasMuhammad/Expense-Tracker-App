
import 'package:expense_tracker_app/features/auth/presentation/widgets/signup_widgets/already_have_account.dart';
import 'package:expense_tracker_app/features/auth/presentation/widgets/signup_widgets/google_facebook_signup_widget.dart';
import 'package:expense_tracker_app/features/auth/presentation/widgets/signup_widgets/or_signup_with_widget.dart';
import 'package:expense_tracker_app/features/auth/presentation/widgets/signup_widgets/signup_form_widget.dart';
import 'package:expense_tracker_app/features/auth/presentation/widgets/signup_widgets/signup_title_widget.dart';

import '../../../../../app_barrels.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;


    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        //statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: isDark ? AppColors.fenceGreen : AppColors.caribbeanGreen,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          top: false,
          child: Stack(
            children: [
              SignUpTitleWidget(),
              Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: Container(
                  height: Responsive.hp(83),
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
                          SizedBox(height: Responsive.hp(5)),

                          /// SignUp Account Form
                          SignupFormWidget(),
                          AlreadyHaveAccountWidget(),
                          OrSignupWithWidget(),
                          GoogleFacebookSignUpWidget(),
                          SizedBox(height: Responsive.hp(5),),
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
