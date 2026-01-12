import 'package:expense_tracker_app/shared/widgets/custom_vertical_divider.dart';

import '../../../../../app_barrels.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? AppColors.fenceGreen : AppColors.caribbeanGreen,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Responsive.wp(6),
              vertical: Responsive.hp(3.5),
            ),
            child: Align(
              alignment: AlignmentGeometry.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Responsive.hp(3)),
                  Row(
                    children: [
                      Text(
                        'Hi, ',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontSize: Responsive.sp(5.5),
                          color: isDark
                              ? AppColors.lightGreen
                              : AppColors.voidColor,
                        ),
                      ),
                      Text(
                        'Welcome Back!',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontSize: Responsive.sp(5.5),
                          color: isDark
                              ? AppColors.lightGreen
                              : AppColors.voidColor,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.lightGreen,
                          shape: BoxShape.circle,
                        ),
                        child: CustomButton(
                          child: Icon(Icons.notifications_outlined),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Good Morning',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(height: Responsive.hp(4)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Responsive.hp(3)),

                    /// Main Column Contains Rows & Columns
                    child: Column(
                      children: [

                        /// Total Balance Row
                        Row(
                          children: [
                            Column(
                              children: [
                                /// Income Icon and Total Balance Text Row
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                      width: 15,
                                      child: Image.asset(
                                        AppIconsAssets.incomeIcon,
                                        fit: BoxFit.contain,
                                        color: isDark
                                            ? AppColors.lightGreen
                                            : AppColors.voidColor,
                                      ),
                                    ),
                                    SizedBox(width: Responsive.wp(1)),
                                    Text(
                                      'Total Balance',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.labelMedium,
                                    ),
                                  ],
                                ),

                                /// Total Balance
                                Text(
                                  "\$7,783.00",
                                  style: Theme.of(context).textTheme.titleMedium!
                                      .copyWith(
                                        fontSize: Responsive.sp(6.5),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(width: Responsive.wp(2)),

                            /// Vertical Divider
                            CustomVerticalDivider(
                              height: Responsive.hp(6.5),
                              width: Responsive.wp(0.5),
                            ),
                            SizedBox(width: Responsive.wp(2)),

                            /// Total Expenses Column
                            Column(
                              children: [
                                /// Expense Icon and Total Expense Text
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                      width: 15,
                                      child: Image.asset(
                                        AppIconsAssets.expenseIcon,
                                        fit: BoxFit.contain,
                                        color: isDark
                                            ? AppColors.lightGreen
                                            : AppColors.voidColor,
                                      ),
                                    ),
                                    SizedBox(width: Responsive.wp(1)),
                                    Text(
                                      'Total Expenses',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.labelMedium,
                                    ),
                                  ],
                                ),

                                /// Total Expenses
                                Text(
                                  "-\$1.187.40",
                                  style: Theme.of(context).textTheme.titleMedium!
                                      .copyWith(
                                        fontSize: Responsive.sp(7),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                    color: AppColors.oceanBlue
                                      ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: ClipRect(
              child: Container(
                height: Responsive.hp(65),
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
                      children: [],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
