import 'package:flutter/material.dart';

class AddHabitScreen extends StatefulWidget {
  const AddHabitScreen({super.key});

  @override
  State<AddHabitScreen> createState() => _AddHabitScreenState();
}

class _AddHabitScreenState extends State<AddHabitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
              "Habit Name",
              style: TextStyle(
                color: Colors.black,
              )
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Habit Name',
              hintStyle: TextStyle(
                color: Colors.black,
              )
            ),
          ),
          Text(
              "Repeat",
              style: TextStyle(
                color: Colors.black,
              )
          ),
          ElevatedButton(
              onPressed: () async {
                final TimeOfDay? time = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                );
              },
              child: Text("Select Time")
          ),

        ],
      ),
    );
  }
}
