import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';

class FundProjectPrtovider extends ChangeNotifier {
  final PageController pageController = PageController(initialPage: 0);
  int get numberOfPage => 9;
  int currentPage = 0;
  ProjectFundingData projectFundingData = ProjectFundingData();
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

  void setProjectName(String? projectName) {
    projectFundingData.projectName = projectName;
  }

  void setTokenName(String? tokenName) {
    projectFundingData.tokenName = tokenName;
  }

  void setFundingGoal(FundingGoal? fundingGoal) {
    projectFundingData.fundingGoal = fundingGoal;
  }

  void setDeadline(DateTime? deadLine) {
    projectFundingData.deadLine = deadLine;
  }

  void setProjectReserve(ProjectReserveData? projectReserveData) {
    projectFundingData.projectReserveData = projectReserveData;
  }

  void setProjectFundingRules(ProjectFundingRules? projectFundingRules) {
    projectFundingData.projectFundingRules = projectFundingRules;
  }

  void setDescription(String? description) {
    projectFundingData.description = description;
  }

  void setProjectVisual(ProjectVisualData? projectVisualData) {
    projectFundingData.projectVisualData = projectVisualData;
  }

  void setManagement(ProjectFundingManagementData? managementData) {
    projectFundingData.projectFundingManagementInfo = managementData;
  }
}
