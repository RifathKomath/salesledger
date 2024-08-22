import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// first text in appBar
TextStyle firstTextStyle() {
  return TextStyle(
      color: Colors.teal[900], fontSize: 20, fontWeight: FontWeight.bold);
}
// ended

// second text in appBar
TextStyle secondTextStyle() {
  return const TextStyle(
      color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold);
}
// ended

// detail text class

class DetailText extends StatelessWidget {
  final String details;
  final String value;
  final TextStyle styleText;
  final TextStyle secStyle;
  const DetailText(
      {super.key,
      required this.styleText,
      required this.details,
      required this.value,
      required this.secStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Expanded(
            child: RichText(text: TextSpan(text: details, style: styleText,children: <TextSpan>[TextSpan(text: ' : '),
              TextSpan(text: value,style: secStyle)
            ])),
          ),
        ],
      ),
    );
  }
}
// end

