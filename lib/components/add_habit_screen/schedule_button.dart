import 'package:flutter/cupertino.dart';
import 'package:habit_tracker/constants.dart';

class ScheduleButton extends StatelessWidget {
  final VoidCallback? onPress;
  final String? label;
  final bool isPressed;
  ScheduleButton({required this.onPress, this.isPressed = false, this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 45,
        width: 90,
        decoration: BoxDecoration(
          color: isPressed? kActiveDay : kNotActiveDay,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Center(
            child: Text(
              label!,
              style: TextStyle(
                color: Color(0xFF000000)
              ),
            )
        ),
      ),
    );
  }
}
