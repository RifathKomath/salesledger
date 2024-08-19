import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/classes.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
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
              Text('Product', style: secondTextStyle()),
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