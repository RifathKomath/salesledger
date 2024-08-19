import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/classes.dart';

class ViewCustomer extends StatefulWidget {
  const ViewCustomer({super.key});

  @override
  State<ViewCustomer> createState() => _ViewCustomerState();
}

class _ViewCustomerState extends State<ViewCustomer> {
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
              Text('Customer', style: secondTextStyle()),
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