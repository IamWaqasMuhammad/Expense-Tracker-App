import 'package:expense_tracker_app/app_barrels.dart';
import 'package:expense_tracker_app/features/auth/presentation/blocs/signup_blocs/password_bloc/signup_password_bloc.dart';
import 'package:expense_tracker_app/features/auth/presentation/blocs/signup_blocs/password_bloc/signup_password_event.dart';
import 'package:expense_tracker_app/features/auth/presentation/blocs/signup_blocs/password_bloc/signup_password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({super.key});

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
              /// Full Name Label
              Text(
                AppStringsAssets.fullNameLabel,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontSize: Responsive.sp(4),
                  fontWeight: FontWeight.w400,
                  color: isDark ? AppColors.lightGreen : AppColors.voidColor,
                ),
              ),
              SizedBox(height: Responsive.hp(1)),

              /// Full Name Field
              CustomTextField(
                hintText: AppStringsAssets.fullNameHintText,
                textInputType: TextInputType.name,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: Responsive.hp(3)),

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

              /// Mobile Number Label
              Text(
                AppStringsAssets.mobileNoLabel,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontSize: Responsive.sp(4),
                  fontWeight: FontWeight.w400,
                  color: isDark ? AppColors.lightGreen : AppColors.voidColor,
                ),
              ),
              SizedBox(height: Responsive.hp(1)),

              /// Mobile Number Field
              CustomTextField(
                hintText: AppStringsAssets.mobileNoHintText,
                textInputType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: Responsive.hp(3)),

              /// Date of Birth Label
              Text(
                AppStringsAssets.dateOfBirthLabel,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontSize: Responsive.sp(4),
                  fontWeight: FontWeight.w400,
                  color: isDark ? AppColors.lightGreen : AppColors.voidColor,
                ),
              ),
              SizedBox(height: Responsive.hp(1)),

              /// Date of Birth Field
              CustomTextField(
                hintText: AppStringsAssets.dobHintText,
                textInputType: TextInputType.name,
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
              BlocBuilder<SignupPasswordBloc,SignupPasswordState>(
                buildWhen: (previous, current) =>
                    previous.isPassVisible != current.isPassVisible,
                builder: (context, state) {
                  debugPrint('SignUp Password');

                  return CustomTextField(
                    hintText: AppStringsAssets.passwordHintText,
                    textInputType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    obscureText: state.isPassVisible,
                    suffixIcon: CustomButton(
                      height: Responsive.hp(1),
                      width: Responsive.wp(1),
                                            splashColor: Colors.transparent,
                                            highlightedColor: Colors.transparent,

                      borderRadius: 50,
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
                        context.read<SignupPasswordBloc>().add(
                          PasswordVisibilityToggledEvent(),
                        );
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: Responsive.hp(3)),

              /// Confirm Password Label
              Text(
                AppStringsAssets.confirmPasswordLabel,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontSize: Responsive.sp(4),
                  fontWeight: FontWeight.w400,
                  color: isDark ? AppColors.lightGreen : AppColors.voidColor,
                ),
              ),
              SizedBox(height: Responsive.hp(1)),

              /// Confirm Password Field
              BlocBuilder<SignupPasswordBloc, SignupPasswordState>(
                buildWhen: (previous, current) =>
                    previous.isConfirmPasswordVisible !=
                    current.isConfirmPasswordVisible,
                builder: (context, state) {
                  debugPrint('Confirm Password');
                  return CustomTextField(
                    hintText: AppStringsAssets.passwordHintText,
                    textInputType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    obscureText: state.isConfirmPasswordVisible,
                    suffixIcon: CustomButton(
                      height: Responsive.hp(1),
                      width: Responsive.wp(1),
                      splashColor: Colors.transparent,
                      highlightedColor: Colors.transparent,
                      borderRadius: 50,
                      color: Colors.transparent,
                      child: Align(
                        alignment: AlignmentGeometry.centerRight,
                        child: Center(
                          child: Image.asset(
                            state.isConfirmPasswordVisible
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
                        context.read<SignupPasswordBloc>().add(
                          ConfirmPasswordVisibilityToggledEvent(),
                        );
                      },
                    ),
                  );
                },
              ),

              SizedBox(height: Responsive.hp(5)),

              ///SignUp Button
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
                      AppStringsAssets.signUpText,
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
