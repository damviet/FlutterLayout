import 'package:flutter_design/models/task.dart';
import 'package:flutter_design/repos/home_repo.dart';
import 'package:flutter_design/view_models/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel(super.repo);
  @override // TODO: implement repo
  HomeRepository get repo => super.repo as HomeRepository;

  List<Task> tasks = [];

  Future init() async {
    tasks = await repo.getTask();
    notifyListeners();
  }

  int get taskCount {
    return tasks.length;
  }

  String? getTaskName(int index) {
    if (tasks.length > index && index >= 0) {
      return tasks[index].name;
    }
    return null;
  }

  bool? isTaskDone(int index) {
    if (tasks.length > index && index >= 0) {
      return tasks[index].isDone;
    }
    return null;
  }

  void addNewTask(String name) {
    tasks.add(Task(name: name));
    notifyListeners();
  }

  void toggleTask(int index, bool isDone) {
    tasks[index].isDone = isDone;
    notifyListeners();
  }
}
