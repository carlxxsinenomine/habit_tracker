import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Transform.rotate(
        angle: 0.785398, // 45 deg
        child: Container(
          width: 95,
          height: 95,
          decoration: BoxDecoration(
            color: Color(0xFF456F8E),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                offset: Offset(7, 6),
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
