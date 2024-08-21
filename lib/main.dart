import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/db_operations/customer_adding.dart';
import 'package:supermarket_uae/screens/model/add_customer.dart';
import 'package:supermarket_uae/screens/splash_screens/main_splash.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main() async {
  await Hive.initFlutter();
Hive.registerAdapter(CustomerSectionAdapter());
await CustomerAdding().openBox();

 
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

