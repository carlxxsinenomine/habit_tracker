import 'package:flutter/cupertino.dart';

class SelectionButton extends StatelessWidget {
  final VoidCallback? onPress;

  SelectionButton({required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(

        ),
      ),
    );
  }
}
