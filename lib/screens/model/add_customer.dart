import 'package:hive/hive.dart';
part 'add_customer.g.dart';

@HiveType(typeId: 0)
class CustomerSection extends HiveObject{
  @HiveField(0)
  String? customerName;

  @HiveField(1)
  String? customerPhone;

  @HiveField(2)
  String? customerAddress;

  @HiveField(3)
  String? customerMail;

  CustomerSection({
    required this.customerName,
    required this.customerPhone,
    required this.customerAddress,
    this.customerMail,
  });
}
