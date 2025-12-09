import 'package:flutter/material.dart';
import 'pages/input_page.dart';

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

