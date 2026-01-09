import 'package:expense_tracker_app/features/auth/presentation/blocs/login_blocs/password_bloc/login_password_bloc.dart';
import 'package:expense_tracker_app/features/auth/presentation/blocs/signup_blocs/password_bloc/signup_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/theme/app_theme.dart';
import 'features/welcome/presentation/screens/welcome_screen.dart';

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
        home: const WelcomeScreen(),
      ),
    );
  }
}
