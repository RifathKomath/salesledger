import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/classes.dart';
import 'package:supermarket_uae/screens/main_menu/add_customer.dart';
import 'package:supermarket_uae/screens/main_menu/add_product.dart';
import 'package:supermarket_uae/screens/main_menu/all_sales.dart';
import 'package:supermarket_uae/screens/main_menu/view_customer.dart';
import 'package:supermarket_uae/screens/main_menu/view_product.dart';
import 'package:supermarket_uae/screens/main_menu/view_sales.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List names = [
    "View Sales",
    "Add Customer",
    "Add Product",
    "View Customer",
    "View Product",
    "All Sales"
  ];
  List screens = [
    ViewSales(),
    AddCustomer(),
    AddProduct(),
    ViewCustomer(),
    ViewProduct(),
    AllSales()
  ];
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
              Text('Main', style: firstTextStyle()),
              const SizedBox(
                width: 5,
              ),
              Text('Menu', style: secondTextStyle()),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Divider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 25.0,
                  childAspectRatio: 1.0,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => screens[index]));
                    },
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.teal),borderRadius: BorderRadius.circular(10),),
                      child: Center(
                        child: Text(
                          names[index],
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700,)
                              ,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
