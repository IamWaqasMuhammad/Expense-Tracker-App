import 'package:expense_tracker_app/app_barrels.dart';
import 'package:expense_tracker_app/features/category/presentation/screen/category_screen.dart';
import 'package:expense_tracker_app/features/main/presentations/bloc/bottom_nav_blocs/bottom_nav_bloc.dart';
import 'package:expense_tracker_app/features/main/presentations/bloc/bottom_nav_blocs/bottom_nav_state.dart';
import 'package:expense_tracker_app/features/main/presentations/widgets/nav_bar/custom_nav_bar.dart';
import 'package:expense_tracker_app/features/profile/presentation/screen/profile_screen.dart';
import 'package:expense_tracker_app/features/transaction/presentation/screen/transaction_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
