class Task {
  final String name;
  bool isDone;

  Task({
    this.isDone = false,
    this.name,
  });

  void taskDone() {
    isDone = !isDone;
  }
}
