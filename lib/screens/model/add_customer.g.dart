// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_customer.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CustomerSectionAdapter extends TypeAdapter<CustomerSection> {
  @override
  final int typeId = 0;

  @override
  CustomerSection read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CustomerSection(
      customerName: fields[0] as String?,
      customerPhone: fields[1] as String?,
      customerAddress: fields[2] as String?,
      customerMail: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CustomerSection obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.customerName)
      ..writeByte(1)
      ..write(obj.customerPhone)
      ..writeByte(2)
      ..write(obj.customerAddress)
      ..writeByte(3)
      ..write(obj.customerMail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerSectionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
