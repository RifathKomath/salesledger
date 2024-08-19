import 'package:flutter/material.dart';
import 'package:supermarket_uae/screens/classes.dart';

class ConnectPrinter extends StatefulWidget {
  const ConnectPrinter({super.key});

  @override
  State<ConnectPrinter> createState() => _ConnectPrinterState();
}

class _ConnectPrinterState extends State<ConnectPrinter> {
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
              Text('Connect', style: firstTextStyle()),
              const SizedBox(
                width: 5,
              ),
              Text('Printer', style: secondTextStyle()),
            ],
          ),
        ),
      ),
       body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
          ],
        ),
      ),
    );
  }
}