import 'package:flutter/material.dart';
import 'package:habit_tracker/components/home/add_button.dart';
import 'package:habit_tracker/components/home/day_box.dart';
import 'package:habit_tracker/components/home/habit_box.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 17.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 73,
              ),
              // Text and Notifications
              // Header
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                                'Good Morning,',
                                style: TextStyle(
                                  fontFamily: 'Obviously',
                                  fontSize: 25.0,
                                  color: Colors.black,
                                )
                            ),
                            Text(
                                'Calexx',
                                style: TextStyle(
                                  fontFamily: 'Obviously',
                                  fontSize: 40.0,
                                  color: Colors.black,
                                  height: 0.5
                                )
                            ),
                          ],
                        )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_active,
                              color: Colors.black,
                            )
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_active,
                              color: Colors.black,
                            )
                        )
                      ],
                    )

                  ],
                ),
              ),
              // Day section
              Expanded(
                flex: 1,
                child: Row(
                children: <Widget>[
                  DayBox(color: Color(0xFF8BAE66)),
                  DayBox(color: Color(0xFFE67E22))
                ],
                                  ),
              ),
              // Habits section
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    HabitBox(onTap: () {}, title: "Habit", day: "Monday",),
                    HabitBox(onTap: () {}, title: "Habit", day: "Monday",),
                    HabitBox(onTap: () {}, title: "Habit", day: "Monday",),
                  ],
                ),
              ),
              // Buttons section
              SizedBox(
                // color: Colors.cyan,
                height: 167.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding:EdgeInsets.only(top: 40),
                      child: Text("Left",
                          style: TextStyle(
                              color: Colors.black54),
                        )
                    ),
                    AddButton(onPressed: () {}),
                    Container(
                        padding:EdgeInsets.only(top: 40),
                        child: Text("Right",
                          style: TextStyle(
                              color: Colors.black54),
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// From the flutter docs (not vibecoded)
// https://api.flutter.dev/flutter/widgets/AnimatedList-class.html
typedef RemovedItemBuilder<T> = Widget Function(
    T item,
    BuildContext context,
    Animation<double> animation
    );

class ListModel<E> {
  ListModel({required this.listKey, required this.removedItemBuilder, Iterable<E>? initialItems})
      : _items = List<E>.from(initialItems ?? <E>[]);

  final GlobalKey<AnimatedListState> listKey;
  final RemovedItemBuilder<E> removedItemBuilder;
  final List<E> _items;

  AnimatedListState? get _animatedList => listKey.currentState;

  void insert(int index, E item) {
    _items.insert(index, item);
    _animatedList!.insertItem(index);
  }

  E removeAt(int index) {
    final E removedItem = _items.removeAt(index);
    if (removedItem != null) {
      _animatedList!.removeItem(index, (BuildContext context, Animation<double> animation) {
        return removedItemBuilder(removedItem, context, animation);
      });
    }
    return removedItem;
  }

  int get length => _items.length;

  E operator [](int index) => _items[index];

  int indexOf(E item) => _items.indexOf(item);
}
