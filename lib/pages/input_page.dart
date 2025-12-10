import 'package:flutter/material.dart';
import 'package:habit_tracker/components/home/day_box.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // Text and Notifications
          Expanded(
            child: Container(

            ),
          ),
          // Day section
          Expanded(
            child: Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Row(
                children: <Widget>[
                  DayBox(color: Color(0xFF8BAE66))
                ],
              )
            ),
          ),
          // Habits section
          Expanded(
            child: Container(
              child: Text('Habits'),
            ),
          ),
          // Buttons section
          Expanded(
            child: Container(
              child: Text('Buttons'),
            ),
          )
        ],
      ),
    );
  }
}
