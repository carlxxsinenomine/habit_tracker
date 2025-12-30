class HabitManager {
  late List<Habit> habitList;

  void addHabit(item) {
    habitList.add(item);
  }

  List<Habit> getList() {
    return habitList;
  }

  Map<String, String> getHabit(habit) {
    return {'title': habit.title, 'day': habit.day};
  }
}

class Habit {
  final String title;
  final String description;
  final String repeatedDays;
  final String time;
  Habit({
    this.description = "None",
    required this.title,
    required this.repeatedDays,
    required this.time,
  });
}