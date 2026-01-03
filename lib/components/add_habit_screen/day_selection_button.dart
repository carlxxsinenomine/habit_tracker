import 'package:flutter/cupertino.dart';
import 'package:habit_tracker/constants.dart';

class SelectionButton extends StatelessWidget {
  final VoidCallback? onPress;
  final String? day;

  const SelectionButton({super.key, required this.onPress, required this.day});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        width: 70,
        height: 40,
        decoration: BoxDecoration(
          color: kSelectionButtonColor,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Center(child: Text(day!)),
      ),
    );
  }
}
