class toDO {
  List<String> todos = ['Study', 'Code', 'Workout', 'Read'];
  Set<String> completed = {'Code'};
  Map<String, int> priorities = {
    'Study': 1,
    'Workout': 2,
    'Code': 3,
    'Read': 4,
  };

  void display() {
    for (var task in todos) {
      int priority = priorities[task] ?? 0;
      bool isDone = completed.contains(task);
      print(
        'Task: $task (Priority: $priority) ${isDone ? '✅ Completed' : '❌ Not done'}',
      );
    }
  }

  void MarkAsCompleted() {
    display();
    print('\nMarking "Read" as completed...\n');
    completed.add('Read');
    display();
  }
}

void main() {
  var todo = toDO();
  todo.MarkAsCompleted();
}
