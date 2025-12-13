import 'package:flutter/material.dart';
import 'package:habit_tracker/components/home/add_button.dart';
import 'package:habit_tracker/components/home/day_box.dart';
import 'package:habit_tracker/components/home/habit_box.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 17.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 73,
              ),
              // Text and Notifications
              // Header
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                                'Good Morning,',
                                style: TextStyle(
                                  fontFamily: 'Obviously',
                                  fontSize: 25.0,
                                  color: Colors.black,
                                )
                            ),
                            Text(
                                'Calexx',
                                style: TextStyle(
                                  fontFamily: 'Obviously',
                                  fontSize: 40.0,
                                  color: Colors.black,
                                  height: 0.5
                                )
                            ),
                          ],
                        )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_active,
                              color: Colors.black,
                            )
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_active,
                              color: Colors.black,
                            )
                        )
                      ],
                    )

                  ],
                ),
              ),
              // Day section
              Expanded(
                flex: 1,
                child: Row(
                children: <Widget>[
                  DayBox(color: Color(0xFF8BAE66)),
                  DayBox(color: Color(0xFFE67E22))
                ],
                                  ),
              ),
              // Habits section
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    HabitBox(onTap: () {}, title: "Habit", day: "Monday",),
                    HabitBox(onTap: () {}, title: "Habit", day: "Monday",),
                    HabitBox(onTap: () {}, title: "Habit", day: "Monday",),
                  ],
                ),
              ),
              // Buttons section
              Container(
                // color: Colors.cyan,
                height: 167.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding:EdgeInsets.only(top: 40),
                      child: Text("Left",
                          style: TextStyle(
                              color: Colors.black54),
                        )
                    ),
                    AddButton(onPressed: () {}),
                    Container(
                        padding:EdgeInsets.only(top: 40),
                        child: Text("Right",
                          style: TextStyle(
                              color: Colors.black54),
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
