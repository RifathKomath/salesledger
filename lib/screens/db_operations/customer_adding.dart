import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:supermarket_uae/screens/model/add_customer.dart';

class CustomerAdding {
 Box<CustomerSection>? customerBox;

 ValueNotifier<List<CustomerSection>> customerNotifier =
      ValueNotifier<List<CustomerSection>>([]);

  Future<void> openBox() async {
    customerBox = await Hive.openBox('customer');
  }

  Future<void> closeBox() async {
    await customerBox!.close();
  }

// addcustomer>>>>>>>.

  Future<void> addCustomer(CustomerSection details) async {
    if (customerBox == null) {
      await openBox();
    }
    details.id = await customerBox!.add(details);
    customerBox!.put(details.id, details);
    await updateValues();
  }

  Future<List<void>> getDetails() async {
    if (customerBox == null) {
      await openBox();
    }
    return await customerBox!.values.toList();
  }

  Future<void> updateValues() async {
    if (customerBox == null) {
      await openBox();
    }
    customerNotifier.value = customerBox!.values.toList();
    customerNotifier.notifyListeners();
  }

  Future<void> searchCar(String value) async {
    if (customerBox == null) {
      await openBox();
    }
    final searchResults = customerBox!.values
        .where((element) =>
            element.customerName!.toLowerCase().contains(value.toLowerCase()))
        .toList();
    customerNotifier.value = searchResults;
    customerNotifier.notifyListeners();
  }
}
