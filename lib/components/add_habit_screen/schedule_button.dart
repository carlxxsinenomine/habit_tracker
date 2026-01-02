import 'package:flutter/cupertino.dart';

class ScheduleButton extends StatelessWidget {
  final VoidCallback? onPress;
  final String? label;

  ScheduleButton({required this.onPress, this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 45,
        width: 90,
        decoration: BoxDecoration(
          color: Color(0xFFFBFBFB),
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
