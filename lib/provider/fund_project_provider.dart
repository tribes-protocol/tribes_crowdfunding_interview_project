import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';

class FundProjectProvider extends ChangeNotifier {
  final PageController pageController = PageController(initialPage: 0);
  int get numberOfPage => 9;
  int currentPage = 0;
  ProjectFundingData projectFundingData = ProjectFundingData();
  void pageChanged(int index) {
    currentPage = index;
    notifyListeners();
  }

  void forwardpage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  void setProjectName(String? projectName) {
    projectFundingData.projectName = projectName;
    forwardpage();
  }

  void setTokenName(String? tokenName) {
    projectFundingData.tokenName = tokenName;
    forwardpage();
  }

  void setFundingGoal(FundingGoal? fundingGoal) {
    projectFundingData.fundingGoal = fundingGoal;
    forwardpage();
  }

  void setDeadline(DateTime? deadLine) {
    projectFundingData.deadLine = deadLine;
    forwardpage();
  }

  void setProjectReserve(ProjectReserveData? projectReserveData) {
    projectFundingData.projectReserveData = projectReserveData;
    forwardpage();
  }

  void setProjectFundingRules(ProjectFundingRules? projectFundingRules) {
    projectFundingData.projectFundingRules = projectFundingRules;
    forwardpage();
  }

  void setDescription(String? description) {
    projectFundingData.description = description;
    forwardpage();
  }

  void setProjectVisual(ProjectVisualData? projectVisualData) {
    projectFundingData.projectVisualData = projectVisualData;
    forwardpage();
  }

  void setManagement(FundingManagementData? managementData) {
    projectFundingData.fundingManagementInfo = managementData;
    forwardpage();
  }
}
