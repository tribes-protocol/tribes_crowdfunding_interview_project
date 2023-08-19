import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/deadline_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/deadline_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/description/description_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/description/description_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/goal_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/goal_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/management/management_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/management/management_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/reserve/reserve_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/reserve/reserve_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/rules/rules_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/rules/rules_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/visual_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/visual_page.dart';

class FundrisingRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    Widget? page;
    switch (settings.name) {
      case GoalContract.name:
        page = const GoalPage();
        break;
      case ProjectContract.name:
        page = const ProjectPage();
        break;
      case TokenContract.name:
        final params = settings.arguments as TokenParams;
        page = TokentPage(
          token: params.token,
          amount: params.amount,
        );
        break;
      case DeadlineContract.name:
        page = const DeadlinePage();
        break;
      case RulesContract.name:
        page = const RulesPage();
        break;
      case DescriptionContract.name:
        page = const DescriptionPage();
        break;
      case VisualContract.name:
        page = const VisualPage();
        break;
      case ReserveContract.name:
        page = const ReservePage();
        break;
      case ManagementContract.name:
        page = const ManagementPage();
        break;
    }

    return MaterialPageRoute<dynamic>(
      builder: (context) {
        return page!;
      },
      settings: settings,
    );
  }
}
