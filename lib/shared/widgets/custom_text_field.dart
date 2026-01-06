import '../../app_barrels.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? textInputType;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final String? hintText;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.textInputType,
    this.obscureText = false,
    this.textInputAction,
    this.hintText,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      validator: validator,
      textAlignVertical: TextAlignVertical.center,
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w400,
        color: isDark
            ? AppColors.honeydew.withOpacity(0.5)
            : AppColors.fenceGreen,
        fontSize: Responsive.sp(2),
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
          color: isDark
              ? AppColors.honeydew.withOpacity(0.5)
              : AppColors.fenceGreen,
          fontSize: Responsive.sp(2)
        ),
        filled: true,
        fillColor: AppColors.cyprusGreen.withOpacity(0.1),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
