import 'package:flutter/material.dart';
import 'package:flutter_design/repos/base_repo.dart';

abstract class BaseViewModel extends ChangeNotifier {
  final BaseRepository _repo;

  BaseViewModel(this._repo);

  BaseRepository get repo {
    return _repo;
  }
}
