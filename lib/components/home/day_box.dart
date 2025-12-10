import 'package:flutter/material.dart';

class DayBox extends StatelessWidget {
  final Color? color;

  const DayBox({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 82.0,
      height: 77.0,
      decoration: BoxDecoration(
        color: Color(0xFF8BAE66),
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(4, 6)
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text("11", style: TextStyle(color: Colors.black,)),
          Text("Mon", style: TextStyle(color: Colors.black,))
        ],
      ),
    );
  }
}
