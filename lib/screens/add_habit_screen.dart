import 'package:flutter/material.dart';
import 'package:habit_tracker/constants.dart';
import 'package:habit_tracker/models/habit.dart';

class AddHabitScreen extends StatelessWidget {
  const AddHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Add Habit'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 18.0, bottom: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    "Habit Name",
                    style: kLabelStyle,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Habit Name',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      )
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    "Description",
                    style: kLabelStyle
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Description',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      )
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    "Repeat",
                    style: kLabelStyle
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () async {
                        final TimeOfDay? time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          initialEntryMode: TimePickerEntryMode.dialOnly,
                        );
                      },
                      child: Text("Select Time")
                  ),
                ),
              ],
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    // Go back and send new Habit object
                    Navigator.pop(context, Habit(
                        title: titleController.text,
                        description: descriptionController.text,
                        repeatedDays: 'repeatedDays',
                        time: 'time'
                    ));
                    },
                  child: Text("Save")
              ),
            )
          ],
        ),
      ),
    );
  }
}
