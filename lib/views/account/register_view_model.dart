import 'package:dapoint/models/api/api.dart';
import 'package:dapoint/models/api/usermodel.dart';
import 'package:flutter/material.dart';

enum RegisterViewState {
  none,
  loading,

  failed,
  error,
}

class RegisterViewModel with ChangeNotifier {
  RegisterViewState _state = RegisterViewState.none;
  RegisterViewState get state => _state;

  changeState(RegisterViewState l) {
    _state = l;
    notifyListeners();
  }

  Future register(UserModel user) async {
    changeState(RegisterViewState.loading);

    try {
      await Api().register(user);
      changeState(RegisterViewState.none);
    } catch (e) {
      if (e.toString().contains('Register Gagal')) {
        changeState(RegisterViewState.failed);
      } else {
        changeState(RegisterViewState.error);
      }
      print(e);
    }
  }
}
