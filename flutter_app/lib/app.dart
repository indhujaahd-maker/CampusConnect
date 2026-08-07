import 'package:flutter/material.dart';
import 'features/authentication/welcome_screen.dart';
import 'core/theme/app_theme.dart';

class DigitalCampusApp extends StatelessWidget {
  const DigitalCampusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Digital Campus",
      theme: AppTheme.lightTheme,
      home: const WelcomeScreen(),
    );
  }
}