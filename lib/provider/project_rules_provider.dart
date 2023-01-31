import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:tribes_crowdfunding_interview_project/enum/overfunding_rules.dart';
import 'package:tribes_crowdfunding_interview_project/enum/underfunding_rules.dart';
import 'package:tribes_crowdfunding_interview_project/provider/fund_project_provider.dart';

class ProjectFundingRulesProvider extends ChangeNotifier {
  bool isCompleted = true;
  OverFundingRules overFundingRules =
      OverFundingRules.allowOverfundingUntilDeadline;
  UnderFundingRules underFundingRules = UnderFundingRules.returnFunds;
  void setOverFundingRules(OverFundingRules rule) {
    overFundingRules = rule;
    notifyListeners();
  }

  void setUnderFundingRules(UnderFundingRules rule) {
    underFundingRules = rule;
    notifyListeners();
  }

  void submit(BuildContext context) {
    var provider = context.read<FundProjectProvider>();
    provider.setProjectFundingRules(ProjectFundingRules(
      overFundingRules: overFundingRules,
      underFundingRules: underFundingRules,
    ));
  }
}
