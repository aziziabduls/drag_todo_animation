import 'package:drag_todo_animation/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        // textTheme: GoogleFonts.poppinsTextTheme(),
        fontFamily: 'sf_pro',
      ),
      // home: HomeScreen(),
      home: OnboardingScreen(),
    ),
  );
}
