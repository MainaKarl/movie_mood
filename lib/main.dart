import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:movie_mood/colors.dart';
import 'package:movie_mood/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Mood',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colours.scaffoldBgColor,
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(splash: Icons.movie_creation_outlined,
          duration: 3000,
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.red,
          nextScreen: const HomeScreen()),
    );
  }
}

