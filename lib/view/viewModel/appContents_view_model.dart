import 'package:voskat/controller/appContents_state.dart';
import 'package:voskat/controller/board_repository.dart';
import 'package:flutter/material.dart';

class AppContentsViewModel with ChangeNotifier {
  late final BoardRepository _repository;

  var _state = AppContentsState();

  AppContentsState get state => _state;

  AppContentsViewModel(this._repository) {
    _getContents();
  }

  Future _getContents() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.getAppContents();
    // ..sort((a, b) => -a.acid.compareTo(b.acid));

    _state = state.copyWith(
      isLoading: false,
      appContentsDB: result,
    );
    notifyListeners();
  }
}