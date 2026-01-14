

import 'app_barrels.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginPasswordBloc()),
        BlocProvider(create: (context) => SignupPasswordBloc()),
        BlocProvider(create: (context) => BottomNavBloc()),
      ],
      child: MaterialApp(
        title: 'MyExpenses',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        themeAnimationStyle: const AnimationStyle(
          curve: Curves.easeInOut,
          duration: Duration(milliseconds: 500),
        ),
        home: LandingScreen(),
      ),
    );
  }
}
