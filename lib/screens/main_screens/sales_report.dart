import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/classes.dart';

class SalesReport extends StatefulWidget {
  const SalesReport({super.key});

  @override
  State<SalesReport> createState() => _SalesReportState();
}

class _SalesReportState extends State<SalesReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(47),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text('Sales', style: firstTextStyle()),
              const SizedBox(
                width: 5,
              ),
              Text('Report', style: secondTextStyle()),
            ],
          ),
        ),
      ),
       body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
          ],
        ),
      ),
    );
  }
}