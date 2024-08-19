import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/custom_designs/classes.dart';

class SellProducts extends StatefulWidget {
  const SellProducts({super.key});

  @override
  State<SellProducts> createState() => _SellProductsState();
}

class _SellProductsState extends State<SellProducts> {
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
              Text('Sell', style: firstTextStyle()),
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
            Divider(),
          ],
        ),
      ),
    );
  }
}