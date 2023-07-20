import 'package:flutter/material.dart';
import 'package:flutter_design/view_models/home_view_model.dart';
import 'package:flutter_design/views/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp(this._homeViewModel, {super.key});

  final HomeViewModel _homeViewModel;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _homeViewModel,
      child: const MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
