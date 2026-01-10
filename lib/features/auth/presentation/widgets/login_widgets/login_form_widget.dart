import 'package:expense_tracker_app/features/auth/presentation/blocs/login_blocs/password_bloc/login_password_bloc.dart';
import 'package:expense_tracker_app/features/auth/presentation/blocs/login_blocs/password_bloc/login_password_event.dart';
import 'package:expense_tracker_app/features/auth/presentation/blocs/login_blocs/password_bloc/login_password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app_barrels.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Email Label
              Text(
                AppStringsAssets.emailLabel,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontSize: Responsive.sp(4),
                  fontWeight: FontWeight.w400,
                  color: isDark ? AppColors.lightGreen : AppColors.voidColor,
                ),
              ),
              SizedBox(height: Responsive.hp(1)),

              /// Email Field
              CustomTextField(
                hintText: AppStringsAssets.emailHintText,
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: Responsive.hp(3)),

              /// Password Label
              Text(
                AppStringsAssets.passwordLabel,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontSize: Responsive.sp(4),
                  fontWeight: FontWeight.w400,
                  color: isDark ? AppColors.lightGreen : AppColors.voidColor,
                ),
              ),
              SizedBox(height: Responsive.hp(1)),

              /// Password Field
              BlocBuilder<LoginPasswordBloc, LoginPasswordState>(
                buildWhen: (previous, current) =>
                    previous.isPassVisible != current.isPassVisible,
                builder: (context, state) {
                  debugPrint('login Password');
                  return CustomTextField(
                    hintText: AppStringsAssets.passwordHintText,
                    textInputType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    obscureText: state.isPassVisible,
                    suffixIcon: CustomButton(
                      height: Responsive.hp(1),
                      width: Responsive.wp(1),
splashColor: Colors.transparent,
                      highlightedColor: Colors.transparent,                      borderRadius: 50,
                      color: Colors.transparent,
                      child: Align(
                        alignment: AlignmentGeometry.centerRight,
                        child: Center(
                          child: Image.asset(
                            state.isPassVisible
                                ? AppIconsAssets.visibilityOffIcon
                                : AppIconsAssets.visibilityOnIcon,
                            width: Responsive.hp(3),
                            height: Responsive.wp(3),
                            color: isDark
                                ? AppColors.honeydew.withOpacity(0.5)
                                : AppColors.fenceGreen,
                            gaplessPlayback: false,
                          ),
                        ),
                      ),
                      onTap: () {
                        context.read<LoginPasswordBloc>().add(
                          LoginVisiblePasswordToggleEvent(),
                        );
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: Responsive.hp(1.5)),

              ///Forget Password Row
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  /// Forget Password Button
                  CustomButton(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgetPasswordScreen(),
                        ),
                      );
                    },
                    height: Responsive.hp(5),
                    width: Responsive.wp(40),
                    borderRadius: 25,
                    child: Center(
                      child: Text(
                        AppStringsAssets.forgetText,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: Responsive.sp(3),
                          fontWeight: FontWeight.w500,
                          color: isDark
                              ? AppColors.honeydew.withOpacity(0.5)
                              : AppColors.voidColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Responsive.hp(5)),

              /// Login Button
              Center(
                child: CustomButton(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FingerPrintScreen(),
                      ),
                    );
                  },
                  height: Responsive.hp(7),
                  width: Responsive.wp(60),
                  color: AppColors.caribbeanGreen,
                  borderRadius: 25,
                  child: Center(
                    child: Text(
                      AppStringsAssets.loginText,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: Responsive.sp(4.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: Responsive.hp(1.5)),
            ],
          ),
        ),
      ],
    );
  }
}
