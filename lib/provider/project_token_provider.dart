import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/fund_project_provider.dart';

class ProjectTokenProvider extends ChangeNotifier {
  bool isCompleted = false;
  TextEditingController projectTokenController = TextEditingController();
  String? projectToken;
  void onTokenNameChanged(String value) {
    if (value.isNotEmpty) {
      projectToken = value.toUpperCase();
      isCompleted = true;
      notifyListeners();
    }
  }

  void submit(BuildContext context) {
    var provider = context.read<FundProjectProvider>();
    provider.setTokenName(projectToken);
  }
}
