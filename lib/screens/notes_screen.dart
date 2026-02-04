import 'package:flutter/material.dart';
import 'package:habit_tracker/components/global_components.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          // Button Section
          children: [
            // Notes Section
            Text(
                "Notes",
                style: TextStyle(
                  fontFamily: 'Obviously',
                  fontSize: 40.0,
                  color: Colors.black,
                )
            ),

            MainButton(
              onPress: () {
                // _addHabit("Habit 1", "Everyday");
                final _ = Navigator.pushNamed(
                    context,
                    '/add_notes'
                );
                setState(() {
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
