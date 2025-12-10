import 'package:flutter/material.dart';
import 'package:habit_tracker/components/home/day_box.dart';

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
                height: 53.0,
              ),
              // Text and Notifications
              // Header
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                    height: 0.5,
                                  )
                              ),
                            ],
                          )
                      )
                    ],
                  ),
                ),
              ),
              // Day section
              Expanded(
                child: Container(
                    child: Row(
                    children: <Widget>[
                      DayBox(color: Color(0xFF8BAE66))
                    ],
                  )
                ),
              ),
              // Habits section
              Expanded(
                child: Container(
                  child: Text('Habits'),
                ),
              ),
              // Buttons section
              Expanded(
                child: Container(
                  child: Text('Buttons'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
