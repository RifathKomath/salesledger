import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/classes.dart';

class ViewProduct extends StatefulWidget {
  const ViewProduct({super.key});

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
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
              Text('View', style: firstTextStyle()),
              const SizedBox(
                width: 5,
              ),
              Text('Products', style: secondTextStyle()),
            ],
          ),
        ),
      ),
       body:const SingleChildScrollView(
        child: Column(
          children: [
            Divider()
          ],
        ),
      ),
    );
  }
}