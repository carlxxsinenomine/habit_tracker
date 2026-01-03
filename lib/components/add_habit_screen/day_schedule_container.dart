import 'package:flutter/cupertino.dart';
import 'package:habit_tracker/constants.dart';

class DayScheduleContainer extends StatelessWidget {
  final VoidCallback? onPress;
  final String? label;
  final bool isPressed;
  const DayScheduleContainer({required this.onPress, required this.label, this.isPressed = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 45,
        width: 150,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: isPressed ? Color(0xFF000000) : kNotActiveDay,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                label!,
                style: TextStyle(
                  color: isPressed ? Color(0xFFDDDDDD) : Color(0xFF000000)
                ),
            )
          ],
        ),
      ),
    );
  }
}
