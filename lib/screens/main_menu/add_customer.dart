import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/custom_designs/classes.dart';
import 'package:supermarket_uae/screens/custom_designs/textformfield.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:supermarket_uae/screens/model/add_customer.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({super.key});

  set id(int id) {}

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  final customerName = TextEditingController();
  final customerMail = TextEditingController();
  final customerPhone = TextEditingController();
  final customerAddress = TextEditingController();

  final formKey = GlobalKey<FormState>();

  List<String> images = [
    'assets/carousal/3-1024x576.jpg',
    'assets/carousal/4-1024x576.jpg',
    'assets/carousal/6-1024x576.jpg',
    'assets/carousal/9-1024x576.jpg',
    'assets/carousal/10-1024x576.jpg',
  ];

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
              Text('Customer', style: secondTextStyle()),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const Divider(),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  viewportFraction: 0.8,
                ),
                items: images.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image.asset(
                          item,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 20,
              ),
              customTextField(
                controller: customerName,
                icon: Icons.account_box,
                label: 'Customer name',
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the customer name';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              customTextField(
                controller: customerMail,
                icon: Icons.mail,
                label: 'Customer E-mail',
                keyboardType: TextInputType.emailAddress,
                // validator: (value) {
                //   if(value==null || value.isEmpty){
                //     return 'Please enter the E-mail';
                //   }else{
                //     return null;
                //   }
                // },
              ),
              const SizedBox(
                height: 20,
              ),
              customTextField(
                controller: customerPhone,
                icon: Icons.phone,
                label: 'Customer Number',
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the customer number';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              customTextField(
                controller: customerAddress,
                icon: Icons.location_on_outlined,
                label: 'Customer Addess',
                keyboardType: TextInputType.streetAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the customer address';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        formKey.currentState!.validate();
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
