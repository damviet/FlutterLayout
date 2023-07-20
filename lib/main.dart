import 'package:flutter/material.dart';
import 'package:flutter_design/locator.dart';
import 'package:flutter_design/repos/home_repo.dart';
import 'package:flutter_design/view_models/home_view_model.dart';
import 'package:flutter_design/views/home/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  setLocator();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => HomeViewModel(locator<HomeRepository>()),
      )
    ],
    child: const HomeView(),
  ));
}
