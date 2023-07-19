import 'package:flutter/material.dart';
import 'package:flutter_design/view_models/home_view_model.dart';
import 'package:flutter_design/views/screens/home_page.dart';

void main() {
  final HomeViewModel _homeViewModel = HomeViewModel();
  runApp(MyApp(_homeViewModel));
}
