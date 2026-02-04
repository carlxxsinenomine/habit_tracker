import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/add_habit_screen.dart';
import 'package:habit_tracker/screens/notes_screen.dart';
import '../models/habit.dart';
import '../screens/input_page.dart';
import '../screens/notes_screen.dart';
import 'home/add_button.dart';

class MainButton extends StatelessWidget {
  final VoidCallback onPress;
  late HabitManager<Habit> habitManager = HabitManager();

  MainButton({
    required this.onPress
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      // color: Colors.cyan,
      height: 167.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => InputPage())
              // );
            },
            child: Container(
                padding:EdgeInsets.only(top: 40),
                child: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                )
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoScreen())
              );
            },
            child: Container(
                padding:EdgeInsets.only(top: 40),
                child: Icon(
                  Icons.event_note_outlined,
                  color: Colors.black,
                )
            ),
          ),
          AddButton(
              onPressed: onPress,
          ),
          GestureDetector(
            child: Container(
                padding:EdgeInsets.only(top: 40),
                child: Icon(
                  Icons.dashboard_outlined,
                  color: Colors.black,
                )
            ),
          ),
          GestureDetector(
            child: Container(
                padding:EdgeInsets.only(top: 40),
                child: Icon(
                  Icons.person_2_outlined,
                  color: Colors.black,
                )
            ),
          ),
        ],
      ),
    );
  }
}

