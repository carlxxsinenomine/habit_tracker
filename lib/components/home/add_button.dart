import 'dart:math';

import 'package:flutter/material.dart';
import 'package:habit_tracker/constants.dart';


class AddButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isPressed;

  static const double addAngle = 0.785398;
  static const double exitAngle = 1.57079632679;

  static double angle = addAngle;
  const AddButton({
    super.key,
    this.isPressed = false,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onPressed,
      child: AnimatedRotation(
        turns: isPressed ? (exitAngle / (2 * pi)) : (addAngle / (2 * pi)), // sabi sa docs need daw 2*pi eh AHAHAHA
        duration: Duration(milliseconds: 100),
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: kAddButtonColor,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                offset: Offset(6, 4),
              )
            ]
          ),
          child: Transform.rotate(
            angle: -0.785398,
            child: Icon(
              Icons.add,
              color: Colors.black54,
              size: 45,
            ),
          ),
        ),
      ),
    );
  }
}
