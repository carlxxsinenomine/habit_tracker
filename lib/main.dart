import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/add_habit_screen.dart';
import 'screens/input_page.dart';

void main() => runApp(HabitTracker());

class HabitTracker extends StatelessWidget {
  const HabitTracker({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/add_habit': (context) => AddHabitScreen(),
      },
      theme: ThemeData.dark().copyWith(
        useMaterial3: false,
        scaffoldBackgroundColor: Color(0xFFDBF7D7),
        colorScheme: ColorScheme.light(
          primary: Color(0xFF0A0E21)
        )
      ),

    );
  }
}

