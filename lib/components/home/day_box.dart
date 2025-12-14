import 'package:flutter/material.dart';

class DayBox extends StatelessWidget {
  final Color? color;

  const DayBox({
    super.key,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 82.0,
      height: 77.0,
      decoration: BoxDecoration(
        color: color,
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
