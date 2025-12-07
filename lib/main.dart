import 'package:flutter/material.dart';

void main() => runApp(HabitTracker());

class HabitTracker extends StatelessWidget {
  const HabitTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        useMaterial3: false,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme.light(
          primary: Color(0xFF0A0E21)
        )
      ),

      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // Main contents
          Container(
            child: Text('Middle'),
          ),
          // Navigation buttons
          Container(
            child: Text('Bottom'),
          )
        ],
      ),
    );
  }
}
