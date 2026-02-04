import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/add_habit_screen.dart';
import 'package:habit_tracker/screens/add_notes_page.dart';
import 'package:habit_tracker/screens/notes_screen.dart';
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
        '/notes_screen': (context) => TodoScreen(),
        '/add_notes': (context) => AddNotesPage()
      },
      theme: ThemeData.dark().copyWith(
        useMaterial3: false,
        scaffoldBackgroundColor: Color(0xFFDDDDDD),
        colorScheme: ColorScheme.light(
          primary: Color(0xFF0A0E21)
        )
      ),

    );
  }
}

