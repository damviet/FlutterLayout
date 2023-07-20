import 'package:flutter/services.dart';

class Utils {
  static Future<String> loadInitTasks() async {
    return await rootBundle.loadString('assets/data/init_tasks.json');
  }
}
