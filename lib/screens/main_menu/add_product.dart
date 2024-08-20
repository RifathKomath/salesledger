import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:supermarket_uae/screens/custom_designs/classes.dart';
import 'package:lottie/lottie.dart';
import 'package:supermarket_uae/screens/custom_designs/textformfield.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final productName = TextEditingController();
  final costPrice = TextEditingController();
  final sellingPrice = TextEditingController();
  final itemCode = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(47),
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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Divider(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Lottie.asset('assets/o1CzpmiVxe (1).json'),
              ),
              customTextField(
                controller: productName,
                icon: Icons.shopping_cart_rounded,
                label: 'Product name',
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the product name';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              customTextField(
                controller: costPrice,
                icon: Icons.currency_rupee_rounded,
                label: 'Cost price',
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Cost price';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              customTextField(
                controller: sellingPrice,
                icon: Icons.currency_rupee_rounded,
                label: 'Selling price',
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Selling price';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              customTextField(
                controller: itemCode,
                icon: Icons.barcode_reader,
                label: 'Item code',
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Item code';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        _formKey.currentState!.validate();
                      },
                      label: const Text(
                        'Subimit',
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: const Icon(Icons.check_box),
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.teal[900]),
                          iconColor:
                              const WidgetStatePropertyAll(Colors.white)),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
