import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/fund_project_provider.dart';

class ProjectDescriptionProvider extends ChangeNotifier {
  bool isCompleted = false;
  TextEditingController projectDescriptionController = TextEditingController();
  String? _description;
  void onProjectDescriptionChanged(String value) {
    if (value.isNotEmpty) {
      _description = value;
      isCompleted = true;
      notifyListeners();
    }
  }

  void submit(BuildContext context) {
    var provider = context.read<FundProjectProvider>();
    provider.setDescription(_description);
  }
}
