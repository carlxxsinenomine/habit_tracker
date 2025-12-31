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
  final String _description;
  final String _repeatedDays;
  final String _day;
  Habit({
    description = "None",
    required title,
    required repeatedDays,
    required day,
  }) :  _title = title,
        _repeatedDays = repeatedDays,
        _day = day,
        _description = description;

  String get day => _day;
  String get title => _title;
  String get description => _description;
  String get repeatedDays => _repeatedDays;
}