import 'dart:convert';
import 'dart:developer';

import 'package:flutter_design/models/task.dart';
import 'package:flutter_design/repos/base_repo.dart';
import 'package:flutter_design/utils/utils.dart';

class HomeRepository extends BaseRepository {
  @override
  Future fetchData() async {}

  Future<List<Task>> getTask() async {
    List<Task> task = List.empty(growable: true);
    try {
      List<dynamic> arr = jsonDecode(await Utils.loadInitTasks());
      for (int i = 0; i < arr.length; i++) {
        task.add(Task.fromJson(arr[i]));
      }
    } catch (e) {
      log(e.toString());
    }
    return task;
  }
}
