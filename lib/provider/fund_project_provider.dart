import 'package:flutter/material.dart';

class FundProjectPrtovider extends ChangeNotifier {
  final PageController pageController = PageController(initialPage: 0);
  int get numberOfPage => 9;
  int currentPage = 0;
  void pageChanged(int index) {
    currentPage = index;
    notifyListeners();
  }

  void forwardpage(BuildContext context) {
    pageController.nextPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }
}
