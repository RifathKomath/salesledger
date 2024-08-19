import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/classes.dart';

class AllSales extends StatefulWidget {
  const AllSales({super.key});

  @override
  State<AllSales> createState() => _AllSalesState();
}

class _AllSalesState extends State<AllSales> {
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
              Text('All', style: firstTextStyle()),
              const SizedBox(
                width: 5,
              ),
              Text('Sales', style: secondTextStyle()),
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