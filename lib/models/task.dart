class Task {
  String? name;
  bool? isDone;

  Task({required this.name, this.isDone = false});

  Task.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? "";
    isDone = json['is_done'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['is_done'] = isDone;
    return data;
  }

  void toggleDone(bool newValue) {
    isDone = newValue;
  }
}
