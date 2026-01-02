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
        height: 50,
        width: 80,
        decoration: BoxDecoration(
          color: Color(0xFFF3F6F4),
        ),
        child: Text(label!),
      ),
    );
  }
}
