class HabitManager<T> {
  late List<T> habitList;

  void addHabit(item) {
    habitList.add(item);
  }

  List<T> getList() {
    return habitList;
  }
}

class Habit {
  final String _title;
  final String _description;
  final String _repeatedDays;
  final String _time;
  Habit({
    description = "None",
    required title,
    required repeatedDays,
    required time,
  }) :  _title = title,
        _repeatedDays = repeatedDays,
        _time = time,
        _description = description;

  String get time => _time;
  String get title => _title;
  String get description => _description;
  String get repeatedDays => _repeatedDays;
}