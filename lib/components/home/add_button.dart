import 'dart:math';

import 'package:flutter/material.dart';
import 'package:habit_tracker/constants.dart';

import 'custom_rect_tween.dart';
import 'hero_dialog_route.dart';

class AddButton extends StatelessWidget {
  final VoidCallback onPressed;

  static const double addAngle = 0.785398;
  static const double exitAngle = 1.57079632679;

  static double angle = addAngle;
  const AddButton({
    super.key,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(HeroDialogRoute(builder: (context) {
          return const _AddTodoPopupCard();
        }));
      },
      child: Hero(
        tag: _heroAddHabit,
        createRectTween: (begin, end) {
          return CustomRectTween(begin: begin!, end: end!);
        },
        child: AnimatedRotation(
          turns: (addAngle / (2 * pi)), // sabi sa docs need daw 2*pi eh AHAHAHA
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
      ),
    );
  }
}


// https://github.com/funwithflutter/flutter_ui_tips/blob/master/tip_003_popup_card/lib/add_todo_button.dart
const String _heroAddHabit = 'add-habit-hero';

/// {@template add_todo_popup_card}
/// Popup card to add a new [Todo]. Should be used in conjuction with
/// [HeroDialogRoute] to achieve the popup effect.
///
/// Uses a [Hero] with tag [_heroAddTodo].
/// {@endtemplate}
class _AddTodoPopupCard extends StatelessWidget {
  /// {@macro add_todo_popup_card}
  const _AddTodoPopupCard();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: _heroAddHabit,
          createRectTween: (begin, end) {
            return CustomRectTween(begin: begin!, end: end!);
          },
          child: Material(
            color: kAddButtonColor,
            elevation: 2,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'New todo',
                        border: InputBorder.none,
                      ),
                      cursorColor: Colors.white,
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 0.2,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Write a note',
                        border: InputBorder.none,
                      ),
                      cursorColor: Colors.white,
                      maxLines: 6,
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 0.2,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Add'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}