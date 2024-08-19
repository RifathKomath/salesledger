import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/splash_screens/main_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SalesLedger',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MainSplash()
    );
  }
}

