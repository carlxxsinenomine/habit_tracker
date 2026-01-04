import 'dart:ui';

class HabitManager<T> {
  late List<T> habitList = [];

  void addHabit(item) {
    habitList.add(item);
  }

  List<T> getList() {
    return habitList;
  }
}

class Habit {
  final String _title;
  final String _scheduleTime;
  final List<String> _habitSchedule;
  final Color? _color;

  Habit({
    required title,
    required habitSchedule,
    required scheduleTime,
    color
  }) :  _title = title,
        _habitSchedule = habitSchedule,
        _color = color,
        _scheduleTime = scheduleTime;

  String get day => _scheduleTime;
  String get title => _title;
  List<String> get repeatedDays => _habitSchedule;
}