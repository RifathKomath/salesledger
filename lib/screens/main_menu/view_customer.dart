import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/custom_designs/classes.dart';
import 'package:supermarket_uae/screens/db_operations/customer_adding.dart';
import 'package:supermarket_uae/screens/model/add_customer.dart';

class ViewCustomer extends StatefulWidget {
  const ViewCustomer({super.key});

  @override
  State<ViewCustomer> createState() => _ViewCustomerState();
}

class _ViewCustomerState extends State<ViewCustomer> {
  final CustomerAdding _customerAdding = CustomerAdding();
   TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
searchController = TextEditingController();
    _loadDetails();
  }

  Future<void> _loadDetails() async {
    await _customerAdding.updateValues();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
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
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                    height: 47,
                    width: 350,
                    child: SearchBar(
                     elevation: WidgetStatePropertyAll(0),
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 186, 184, 184)),
                      hintText: 'Search',
                      onChanged: (value) {
                        _customerAdding.searchCar(value);
                      },
                      hintStyle:
                          WidgetStatePropertyAll(TextStyle(fontSize: 18)),
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Icon(Icons.search),
                      ),
                    controller: searchController
                    )
                    ),
              )),
        ),
      ),
      body: ValueListenableBuilder<List<CustomerSection>>(
        valueListenable: _customerAdding.customerNotifier,
        builder: (context, value, child) {
          return value.isEmpty
              ? Center(
                  child: Text("No customer added yet"),
                )
              : ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Card(
                        color: Colors.white,
                        elevation: 5.0,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.teal),
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CircleAvatar(
                                child: Text(
                                  '${index + 1}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: Colors.black54,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Customer name: ${value[index].customerName}",
                                      style: TextStyle(fontSize: 14.5),
                                      textAlign: TextAlign.start,
                                    ),
                                    Text(
                                      "Customer phone: ${value[index].customerPhone}",
                                      style: TextStyle(fontSize: 14.5),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
