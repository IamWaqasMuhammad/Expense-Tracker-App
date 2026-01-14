import 'package:expense_tracker_app/app_barrels.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  static const _screens = [
    HomeScreen(),
    AnalysisScreen(),
    TransactionScreen(),
    CategoryScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    Responsive.init(context);
    return Scaffold(
      extendBody: true,
      body: BlocBuilder<BottomNavBloc, BottomNavState>(
        builder: (context, state) {
          return IndexedStack(index: state.selectedIndex, children: _screens);
        },
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
