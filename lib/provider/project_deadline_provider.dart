import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:tribes_crowdfunding_interview_project/provider/fund_project_provider.dart';

class ProjectDeadlineProvider extends ChangeNotifier {
  bool isCompleted = false;
  Deadlines? chosenDeadline;
  DateTime? chosenDate;
  void setDeadline(Deadlines deadline) {
    chosenDeadline = deadline;
    var currentDate = DateTime.now();
    switch (chosenDeadline) {
      case Deadlines.sevenDays:
        chosenDate = currentDate.add(const Duration(days: 7));
        break;
      case Deadlines.fourteenDays:
        chosenDate = currentDate.add(const Duration(days: 14));
        break;
      case Deadlines.twentyEightDays:
        chosenDate = currentDate.add(const Duration(days: 28));
        break;
      default:
    }
    isCompleted = true;
    notifyListeners();
  }

  void setCustomeDeadline(DateTime dateTime) {
    chosenDeadline = Deadlines.custom;
    chosenDate = dateTime;
    isCompleted = true;
    notifyListeners();
  }

  void submit(BuildContext context) {
    var provider = context.read<FundProjectProvider>();
    provider.setDeadline(chosenDate);
  }
}
