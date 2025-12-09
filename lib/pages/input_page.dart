import 'package:flutter/material.dart';

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
          Container(
            child: Row(
              children: <Widget>[

              ],
            )
          ),
          // Day section
          Container(
            child: Text('Day Row'),
          ),
          // Habits section
          Container(
            child: Text('Habits'),
          ),
          // Buttons section
          Container(
            child: Text('Buttons'),
          )
        ],
      ),
    );
  }
}
