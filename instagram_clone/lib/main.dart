import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/bottombar.dart';
import 'package:instagram_clone/screens/add_screen.dart';
import 'package:instagram_clone/screens/splash_screen/instagram_splash.dart';

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
      title: 'Instagram',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const InstagramSplash(),
    );
  }
}


