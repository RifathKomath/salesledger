import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:supermarket_uae/screens/main_screens/connect_printer.dart';
import 'package:supermarket_uae/screens/main_screens/main_menu.dart';
import 'package:supermarket_uae/screens/main_screens/sales_report.dart';
import 'package:supermarket_uae/screens/main_screens/sell_products.dart';
import 'package:supermarket_uae/screens/main_screens/user.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> screens = <Widget>[
    HomeScreen(),
    SellProducts(),
    SalesReport(),
    ConnectPrinter(),
    User()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: screens[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding:  const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Main Menu',textStyle:TextStyle(color: Colors.teal[900],),
                ),
                GButton(
                  icon: LineIcons.addToShoppingCart,
                  text: 'Sell Products',textStyle:TextStyle(color: Colors.teal[900]),
                ),
                GButton(
                  icon: LineIcons.newspaper,
                  text: 'Sales Reports',textStyle:TextStyle(color: Colors.teal[900]),
                ),
                GButton(
                  icon: LineIcons.print,
                  text: 'Connect Printer',textStyle:TextStyle(color: Colors.teal[900]),
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Account',textStyle:TextStyle(color: Colors.teal[900]),
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}