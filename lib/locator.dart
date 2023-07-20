import 'package:flutter_design/repos/home_repo.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setLocator() {
  locator.registerFactory<HomeRepository>(() => HomeRepository());
}
