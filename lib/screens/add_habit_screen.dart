import 'package:flutter/material.dart';
import 'package:habit_tracker/components/add_habit_screen/day_selection_button.dart';
import 'package:habit_tracker/components/add_habit_screen/schedule_button.dart';
import 'package:habit_tracker/constants.dart';
import 'package:habit_tracker/models/habit.dart';

enum OPTION {one_time, daily, monthly}

class AddHabitScreen extends StatefulWidget {
  const AddHabitScreen({super.key});

  @override
  State<AddHabitScreen> createState() => _AddHabitScreenState();
}

class _AddHabitScreenState extends State<AddHabitScreen> {
  final List<String> DAYS = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  final List<String> MONTHS = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'];

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  OPTION selectedOption = OPTION.daily;
  List<String> activeSelection = [];

  @override
  void initState() {
    super.initState();
    activeSelection = DAYS;
  }

  void showWarningSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      margin: EdgeInsets.only(bottom: 10),
      backgroundColor: Colors.orange[800],
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 3),
      action: SnackBarAction(
        label: 'Dismiss',
        onPressed: () {
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void showDaySelection() {

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Add Habit'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 17.0, right: 17.0, top: 18.0, bottom: 18.0),
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

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: Color(0xFFFBFBFB),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                      "Repeat",
                      style: kLabelStyle
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xFFDDDDDD),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ScheduleButton(
                          onPress: () {
                            setState(() {
                              selectedOption = OPTION.one_time;
                            });
                          },
                          isPressed: selectedOption == OPTION.one_time,
                          label: "One Time",
                        ),
                        ScheduleButton(
                          onPress: () {
                            setState(() {
                              selectedOption = OPTION.daily;
                              activeSelection = DAYS;
                            });
                          },
                          isPressed: selectedOption == OPTION.daily,
                          label: "Daily",
                        ),
                        ScheduleButton(
                          onPress: () {
                            setState(() {
                              selectedOption = OPTION.monthly;
                              activeSelection = MONTHS;
                            });
                          },
                          isPressed: selectedOption == OPTION.monthly,
                          label: "Monthly",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: activeSelection.map(
                                (item) => SelectionButton(
                                    onPress: () {},
                                    day: item)
                            ).toList()
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () async {
                          final TimeOfDay? _ = await showTimePicker(
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
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if(titleController.text.isEmpty) {
                      showWarningSnackBar(context, 'Invalid Title.');
                    } else {
                      // Go back and send new Habit object
                      Navigator.pop(context, Habit(
                          title: titleController.text,
                          description: descriptionController.text,
                          repeatedDays: 'repeatedDays',
                          day: 'time'
                      ));
                    }
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
