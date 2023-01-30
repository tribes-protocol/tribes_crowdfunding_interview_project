import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/fund_project_provider.dart';

class ProjectNameProvider extends ChangeNotifier {
  bool isCompleted = false;
  TextEditingController projectNameController = TextEditingController();
  String? _projectName;
  void onProjectNameChanged(String value) {
    if (value.isNotEmpty) {
      _projectName = value;
      isCompleted = true;
      notifyListeners();
    }
  }

  void submit(BuildContext context) {
    var provider = context.read<FundProjectPrtovider>();
    provider.setProjectName(_projectName);
  }
}
