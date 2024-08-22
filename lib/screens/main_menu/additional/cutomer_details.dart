import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:supermarket_uae/screens/custom_designs/classes.dart';
import 'package:supermarket_uae/screens/db_operations/customer_adding.dart';
import 'package:supermarket_uae/screens/main_menu/additional/edit_customer_page.dart';
import 'package:supermarket_uae/screens/model/add_customer.dart';

class CutomerDetails extends StatefulWidget {
  CustomerSection customerSection;
  CutomerDetails({super.key, required this.customerSection});

  @override
  State<CutomerDetails> createState() => _CutomerDetailsState();
}

class _CutomerDetailsState extends State<CutomerDetails> {

  final CustomerAdding _adding =CustomerAdding();

  final styleText =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black);
  final secStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black);
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
              Text('Customer', style: firstTextStyle()),
              const SizedBox(
                width: 5,
              ),
              Text('Details', style: secondTextStyle()),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Lottie.asset('assets/1N4OhHgN4V.json')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            Column(
              children: [
                DetailText(
                  styleText: styleText,
                  details: 'Customer name',
                  value: '${widget.customerSection.customerName}',
                  secStyle: secStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                DetailText(
                    styleText: styleText,
                    secStyle: secStyle,
                    details: 'Customer phone',
                    value: '${widget.customerSection.customerPhone}'),
                SizedBox(
                  height: 10,
                ),
                DetailText(
                    styleText: styleText,
                    secStyle: secStyle,
                    details: 'Customer E-mail',
                    value: '${widget.customerSection.customerMail}'),
                SizedBox(
                  height: 10,
                ),
                DetailText(
                    styleText: styleText,
                    secStyle: secStyle,
                    details: 'Customer Address',
                    value: '${widget.customerSection.customerAddress}'),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>EditCustomerPage(customerSection: widget.customerSection,)));
                          },
                          label: Text(
                            'Edit',
                            style: TextStyle(color: Colors.teal[900]),
                          ),
                          icon: Icon(
                            Icons.edit,
                            color: Colors.teal[900],
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.white54)),
                        ),
                      )),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          deleteOption(widget.customerSection);
                        },
                        label: Text(
                          'Delete',
                          style: TextStyle(color: Colors.teal[900]),
                        ),
                        icon: Icon(
                          Icons.delete,
                          color: Colors.teal[900],
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white54)),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  void deleteOption(CustomerSection customer)async{
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Delete'),
            content: Text('Are you sure want to delete this customer?'),
            actions: [
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text('No',style: TextStyle(color: Colors.teal[900]),),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white54)),),
              ElevatedButton(onPressed: ()async {
                await _adding.deleteOption(customer.id);
                // await _adding.updateValues();
                setState(() {
                  
                });
                Navigator.pop(context);
                Navigator.pop(context);
                
              }, child: Text('Yes',style: TextStyle(color: Colors.teal[900])),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white54)))
            ],
          );
        });
  }
}
