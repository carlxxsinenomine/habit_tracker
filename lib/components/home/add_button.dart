import 'package:flutter/material.dart';
import 'package:habit_tracker/constants.dart';

class AddButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddButton({
    super.key,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Transform.rotate(
        angle: 0.785398, // 45 deg
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
