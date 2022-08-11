import 'package:PhishingKatPlus/controller/appPage_state.dart';
import 'package:PhishingKatPlus/controller/board_repository.dart';
import 'package:flutter/material.dart';

class AppPageViewModel with ChangeNotifier {
  late final BoardRepository _repository;

  var _state = AppPageState();

  AppPageState get state => _state;

  AppPageViewModel(this._repository) {
    _getContents();
  }

  Future _getContents() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.getPages();
    // ..sort((a, b) => -a.acid.compareTo(b.acid));

    _state = state.copyWith(
      isLoading: false,
      appPageDB: result,
    );
    notifyListeners();
  }
}