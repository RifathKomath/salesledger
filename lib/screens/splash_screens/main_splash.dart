import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/bottom_navigation.dart';
import 'package:supermarket_uae/screens/main_screens/main_menu.dart';

class MainSplash extends StatefulWidget {
  const MainSplash({super.key});

  @override
  State<MainSplash> createState() => _MainSplashState();
}

class _MainSplashState extends State<MainSplash> {

@override
  void initState() {
    goToSecondSplash();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Colors.white,
     body: Center(
     child: Image.asset('assets/mainsplash.gif'),
     ),
    );
  }

Future<void>goToSecondSplash()async{
  await Future.delayed(const Duration(seconds: 3));
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>BottomNavigation()));
}
}