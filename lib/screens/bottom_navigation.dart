import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/main_screens/connect_printer.dart';
import 'package:supermarket_uae/screens/main_screens/main_menu.dart';
import 'package:supermarket_uae/screens/main_screens/sales_report.dart';
import 'package:supermarket_uae/screens/main_screens/sell_products.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List screens = [
    HomeScreen(),
    SellProducts(),
    SalesReport(),
    ConnectPrinter()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      );
    
  }
}
