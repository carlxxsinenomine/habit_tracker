import 'package:flutter/material.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

import 'package:habit_tracker/components/add_habit_screen/day_schedule_container.dart';
import 'package:habit_tracker/components/add_habit_screen/day_selection_button.dart';
import 'package:habit_tracker/components/add_habit_screen/schedule_button.dart';
import 'package:habit_tracker/constants.dart';
import 'package:habit_tracker/models/habit.dart';

enum HABIT_SCHEDULE {one_time, daily, monthly}
enum SCHEDULE_TIME {anytime, morning, afternoon, evening}

class AddHabitScreen extends StatefulWidget {
  const AddHabitScreen({super.key});

  @override
  State<AddHabitScreen> createState() => _AddHabitScreenState();
}

class _AddHabitScreenState extends State<AddHabitScreen> {
  final List<String> days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  final List<String> months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'];

  final titleController = TextEditingController();

  HABIT_SCHEDULE selectedOption = HABIT_SCHEDULE.daily;
  SCHEDULE_TIME selectedSchedule = SCHEDULE_TIME.anytime;
  bool checkboxScheduleToggled = false;
  List<String> activeSelection = [];
  List<String> selectedSchedules = [];

  late Color selectedColor;

  @override
  void initState() {
    super.initState();
    activeSelection = days;
    selectedColor = Colors.red;
  }

  void showWarningSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      margin: EdgeInsets.only(bottom: 10),
      backgroundColor: Colors.white60,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Add Habit'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 17.0, right: 17.0, top: 18.0, bottom: 18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  decoration: BoxDecoration(
                      color: Color(0xFFFBFBFB),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Habit Title", style: TextStyle(color: Colors.black,)),
                      TextField(
                        controller: titleController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: "Type here",
                          hintStyle: TextStyle(
                            color: Colors.black
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                    color: selectedColor,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: ColorPicker(
                  color: selectedColor,
                  onColorChanged: (Color color) => setState(() => selectedColor = color),
                  pickersEnabled: const <ColorPickerType, bool>{
                    ColorPickerType.both: false,
                    ColorPickerType.primary: false,
                    ColorPickerType.accent: false,
                    ColorPickerType.bw: false,
                    ColorPickerType.custom: false,
                    ColorPickerType.wheel: true,
                  }
                ),
              ),
              SizedBox(height: 10,),
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
                        "Do it at",
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: DayScheduleContainer(
                                onPress: () {
                                  setState(() {
                                    selectedSchedule = SCHEDULE_TIME.anytime;
                                  });
                                },
                                isPressed: (selectedSchedule == SCHEDULE_TIME.anytime),
                                label: "Anytime"
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: DayScheduleContainer(
                                onPress: () {
                                  setState(() {
                                    selectedSchedule = SCHEDULE_TIME.morning;
                                  });
                                },
                                isPressed: (selectedSchedule == SCHEDULE_TIME.morning),
                                label: "Morning"
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: DayScheduleContainer(
                                onPress: () {
                                  setState(() {
                                    selectedSchedule = SCHEDULE_TIME.afternoon;
                                  });
                                },
                                isPressed: (selectedSchedule == SCHEDULE_TIME.afternoon),
                                label: "Afternoon"
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: DayScheduleContainer(
                                onPress: () {
                                  setState(() {
                                    selectedSchedule = SCHEDULE_TIME.evening;
                                  });
                                },
                                isPressed: (selectedSchedule == SCHEDULE_TIME.evening),
                                label: "Evening"
                            ),
                          ),
                        ],
                      )
                    ],
                  )
              ),
              SizedBox(height: 10,),
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
                    SizedBox(
                      height: 10,
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
                                selectedOption = HABIT_SCHEDULE.one_time;
                              });
                            },
                            isPressed: selectedOption == HABIT_SCHEDULE.one_time,
                            label: "One Time",
                          ),
                          ScheduleButton(
                            onPress: () {
                              setState(() {
                                selectedOption = HABIT_SCHEDULE.daily;
                                activeSelection = days;
                              });
                            },
                            isPressed: selectedOption == HABIT_SCHEDULE.daily,
                            label: "Daily",
                          ),
                          ScheduleButton(
                            onPress: () {
                              setState(() {
                                selectedOption = HABIT_SCHEDULE.monthly;
                                activeSelection = months;
                              });
                            },
                            isPressed: selectedOption == HABIT_SCHEDULE.monthly,
                            label: "Monthly",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if(selectedOption == HABIT_SCHEDULE.daily) {
                                  if(!checkboxScheduleToggled) {
                                    checkboxScheduleToggled = true;
                                    selectedSchedules = [...days];
                                  }
                                  else {
                                    checkboxScheduleToggled = false;
                                    selectedSchedules = [];
                                  }
                                } else if (selectedOption == HABIT_SCHEDULE.monthly) {
                                  if(!checkboxScheduleToggled) {
                                    checkboxScheduleToggled = true;
                                    selectedSchedules = [...months];
                                  }
                                  else {
                                    checkboxScheduleToggled = false;
                                    selectedSchedules = [];
                                  }
                                }
                              });
                            },
                            color: Colors.black54,
                            icon: (checkboxScheduleToggled ||
                                (selectedOption == HABIT_SCHEDULE.daily &&
                                    selectedSchedules.length == days.length) ||
                                (selectedOption == HABIT_SCHEDULE.monthly &&
                                    selectedSchedules.length == months.length)) ?
                            Icon(Icons.check_circle, color: Colors.black,)
                                :Icon(Icons.circle_outlined)
                        ),
                        Text((selectedOption == HABIT_SCHEDULE.daily) ? 'Everyday' : 'Every Month', style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: activeSelection.map(
                                  (item) => SelectionButton(
                                      onPress: () {
                                        setState(() {
                                          if(selectedOption == HABIT_SCHEDULE.daily) {
                                            if(!selectedSchedules.contains(item)) {
                                              selectedSchedules.add(item);
                                            } else {
                                              selectedSchedules.remove(item);
                                            }

                                            if(selectedSchedules.length == 7) {
                                              checkboxScheduleToggled = true;
                                            } else {
                                              checkboxScheduleToggled = false;
                                            }
                                          } else if (selectedOption == HABIT_SCHEDULE.monthly) {
                                            if(!selectedSchedules.contains(item)) {
                                              selectedSchedules.add(item);
                                            } else {
                                              selectedSchedules.remove(item);
                                            }
                                          }
                                        });
                                      },
                                      isSelected: (selectedSchedules.contains(item) || selectedSchedules.contains(item)),
                                      day: item)
                          ).toList()
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
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
              SizedBox(height: 10,),
              GestureDetector(
                onTap: () {
                  if(titleController.text.isEmpty) {
                    showWarningSnackBar(context, 'Invalid Title.');
                  } else {
                    List<String> schedules = [];

                    if(selectedOption == HABIT_SCHEDULE.daily) {
                      schedules = (checkboxScheduleToggled) ? ['Everyday'] : selectedSchedules;
                    } else if(selectedOption == HABIT_SCHEDULE.monthly) {
                      schedules = (checkboxScheduleToggled) ? ['Every Month'] : selectedSchedules;
                    }

                    String getScheduleTime() {
                      switch(selectedSchedule) {
                        case SCHEDULE_TIME.anytime:
                          return "Anytime";
                        case SCHEDULE_TIME.morning:
                          return "Morning";
                        case SCHEDULE_TIME.afternoon:
                          return "Afternoon";
                        case SCHEDULE_TIME.evening:
                          return "Evening";
                      }
                    }

                    // Go back and send new Habit object
                    Navigator.pop(context, Habit(
                        title: titleController.text,
                        habitSchedule: schedules,
                        scheduleTime: getScheduleTime(),
                        color: selectedColor
                    ));
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Center(child: Text("Save", style: TextStyle(fontSize: 15),)),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
