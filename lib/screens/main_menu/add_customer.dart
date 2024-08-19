import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/classes.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({super.key});

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
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
              Text('Add', style: firstTextStyle()),
              const SizedBox(
                width: 5,
              ),
              Text('Customer', style: secondTextStyle()),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider()
          ],
        ),
      ),
    );
  }
}