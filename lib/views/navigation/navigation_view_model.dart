import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationViewModel extends ChangeNotifier {
  int currentIndex = 0;

  set changePageTab(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
