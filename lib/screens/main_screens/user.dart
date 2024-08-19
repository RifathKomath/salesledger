import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/custom_designs/classes.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(47),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text('User', style: firstTextStyle()),
              const SizedBox(
                width: 5,
              ),
              Text('Profile', style: secondTextStyle()),
            ],
          ),
        ),
      ),
       body:const SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
          ],
        ),
      ),
    );
  }
}