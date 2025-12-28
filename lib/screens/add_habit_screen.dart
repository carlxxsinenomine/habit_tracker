import 'package:flutter/material.dart';

class AddHabitScreen extends StatelessWidget {
  const AddHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
                "Description",
                style: TextStyle(
                  color: Colors.black,
                )
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Description',
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
                    initialEntryMode: TimePickerEntryMode.dialOnly,
                  );
                },
                child: Text("Select Time")
            ),
            Row(
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {},
                    child: Text("Close")
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text("Save")
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
