import '../../../../../app_barrels.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive.init(context);
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? AppColors.fenceGreen : AppColors.caribbeanGreen,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          /// TOP CONTENT
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Responsive.wp(6),
                vertical: Responsive.hp(3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// HEADER
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.labelLarge!
                              .copyWith(
                                fontSize: Responsive.sp(5.5),
                                color: isDark
                                    ? AppColors.lightGreen
                                    : AppColors.voidColor,
                              ),
                          children: const [
                            TextSpan(text: 'Hi, '),
                            TextSpan(text: 'Welcome Back!'),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isDark
                              ? AppColors.cyprusGreen.withOpacity(0.2)
                              : AppColors.lightGreen,
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

                  /// BALANCE SECTION
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BalanceInfoColumn(
                          title: 'Total Balance',
                          value: '\$7,783.00',
                          icon: AppIconsAssets.incomeIcon,
                        ),

                        SizedBox(width: Responsive.wp(6)),

                        CustomDivider(
                          height: Responsive.hp(6.5),
                          width: Responsive.wp(0.4),
                        ),

                        SizedBox(width: Responsive.wp(6)),

                        BalanceInfoColumn(
                          title: 'Total Expenses',
                          value: '-\$1,187.40',
                          icon: AppIconsAssets.expenseIcon,
                          valueColor: AppColors.oceanBlue,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Responsive.hp(3)),

                  /// ==============PROGRESS BAR===============
                  Center(
                    child: Container(
                      height: 27,
                      width: Responsive.wp(75),
                      decoration: BoxDecoration(
                        color: isDark
                            ? AppColors.cyprusGreen.withOpacity(0.1)
                            : AppColors.lightGreen,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: isDark
                              ? AppColors.honeydew
                              : AppColors.transperent,
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Progress Fill
                          Container(
                            height: double.infinity,
                            width: (Responsive.wp(75) * 0.3),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  isDark
                                      ? AppColors.caribbeanGreen
                                      : AppColors.oceanBlue,
                                  isDark
                                      ? AppColors.cyprusGreen
                                      : AppColors.caribbeanGreen,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          // Text Content
                          Center(
                            child: Row(
                              children: [
                                SizedBox(width: 10),
                                Text(
                                  '30%',
                                  style: TextStyle(
                                    color: isDark
                                        ? AppColors.honeydew
                                        : AppColors.voidColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$20,000.00",
                                  style: TextStyle(
                                    color: isDark
                                        ? AppColors.honeydew
                                        : AppColors.voidColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Responsive.hp(2)),

                  /// Centered Check Icon + Text
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIconsAssets.checkIcon,
                          height: 14,
                          width: 14,
                          color: isDark
                              ? AppColors.lightGreen
                              : AppColors.voidColor,
                        ),
                        SizedBox(width: Responsive.wp(1.5)),
                        Flexible(
                          child: Text(
                            '30% of your expenses, looks good',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Responsive.hp(1)),
                ],
              ),
            ),
          ),

          /// BOTTOM ROUNDED CONTAINER
          MainBottomContainer(
            widthPercentage: 60,
            child: Column(
              children: [
                CustomContainer(
                  height: Responsive.hp(21),
                  width: Responsive.wp(90),
                  color: AppColors.caribbeanGreen,
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: Responsive.wp(5)),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: Responsive.hp(3.8)),
                            CircularPercentIndicator(
                              radius: 25.0,
                              lineWidth: 3.0,
                              percent: 0.60,
                              center: FaIcon(
                                FontAwesomeIcons.car,
                                color: AppColors.voidColor,
                                size: 25,
                              ),
                              progressColor: Colors.blue,
                              backgroundColor: Colors.white,
                              circularStrokeCap: CircularStrokeCap.round,
                            ),
                            SizedBox(height: Responsive.hp(0.5)),
                            Text(
                              'Saving\n On Goals',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(width: Responsive.hp(3.8)),
                        CustomDivider(height: Responsive.hp(14), width: Responsive.wp(0.5)),
                        SizedBox(width: Responsive.wp(3.8)),
                        Column(
                          children: [
                            SizedBox(height: Responsive.hp(3.8) ),

                            // Revenue Row
                            Row(
                              children: [
                                Image.asset(
                                  AppIconsAssets.salaryIcon,
                                  height: Responsive.hp(6),
                                  width: Responsive.wp(10),
                                  color: AppColors.voidColor,
                                ),
                                SizedBox(width: Responsive.wp(3)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Revenue Last Week',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.labelMedium,
                                    ),
                                    Text(
                                      '\$4000.00',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            fontSize: Responsive.sp(5.5),
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            color: AppColors.voidColor,
                                          ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(height: Responsive.hp(1)),
                            CustomDivider(height: Responsive.hp(0.3), width: Responsive.wp(45)),
                            SizedBox(height: Responsive.hp(1)),

                            // Food Row (aligned like Revenue row)
                            Row(
                              children: [
                                Image.asset(
                                  AppIconsAssets.foodIcon,
                                  height: Responsive.hp(6),
                                  width: Responsive.wp(10),
                                  color: AppColors.voidColor,
                                ),
                                SizedBox(width: Responsive.wp(4)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Food Last Week'),
                                    Text(
                                      '-\$100.00',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            fontSize: Responsive.sp(5.5),
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            color: AppColors.oceanBlue,
                                          ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: Responsive.hp(2),)

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
