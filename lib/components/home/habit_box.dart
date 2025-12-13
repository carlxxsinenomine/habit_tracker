import 'package:flutter/material.dart';

class HabitBox extends StatelessWidget {
  final VoidCallback onTap;

  const HabitBox({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 231.0,
      height: 136.0,
      decoration: BoxDecoration(
        color: Color(0xFF8BAE66),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(4, 6)
          )
        ]
      ),
      child: Center(child: Text('Habit 1', style: TextStyle(color: Colors.black),))
    );
  }
}
