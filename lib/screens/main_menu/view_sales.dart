import 'package:flutter/material.dart';
import 'package:flutter_calendar_widget/flutter_calendar_widget.dart';
import 'package:supermarket_uae/screens/custom_designs/classes.dart';

class ViewSales extends StatefulWidget {
  const ViewSales({super.key});

  @override
  State<ViewSales> createState() => _ViewSalesState();
}

class _ViewSalesState extends State<ViewSales> {
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
              Text('View', style: firstTextStyle()),
              const SizedBox(
                width: 5,
              ),
              Text('Sales', style: secondTextStyle()),
            ],
          ),
        ),
      ),
       body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
    FlutterCalendar(
      style: CalendarStyle(markerColor: Colors.teal,
      rangeLineColor: Colors.black54),
    selectionMode: CalendarSelectionMode.range,
    onRageDate: (CalendarDateRange dateRange) {
        print(
            'start: ${dateRange.start}, end: ${dateRange.end}',
        );
    },
),

          ],
        ),
      ),
    );
  }
}