import 'package:flutter/material.dart';
import 'package:habit_tracker/constants.dart';

class HabitBox extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String day;

  const HabitBox({
    super.key,
    required this.onTap,
    required this.title,
    required this.day
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 90.0,
        margin: EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
            color: Color(0xFF8BAE66),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  offset: Offset(4, 6)
              )
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      color: kBoxLabel,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0
                  ),
                ),
                Text(
                  day,
                  style: TextStyle(
                    color: Color(0xFFEBD5AB),
                    fontFamily: "Calibre",
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 160,
            ),
            GestureDetector(
              child: Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                    color: Color(0xFF1B211A),
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Icon(
                  Icons.check,
                  size: 20,
                ),
              ),
            ),
          ],
        )
    );
  }
}