import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/fund_projects/sub_page/deadline_page.dart';
import 'package:tribes_crowdfunding_interview_project/fund_projects/sub_page/funding_goal_page.dart';
import 'package:tribes_crowdfunding_interview_project/fund_projects/sub_page/project_name_page.dart';
import 'package:tribes_crowdfunding_interview_project/fund_projects/sub_page/token_page.dart';
import 'package:tribes_crowdfunding_interview_project/provider/fund_project_provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/funding_goal_provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_deadline_provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_name_provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_token_provider.dart';
import 'package:tribes_crowdfunding_interview_project/widget/flow_indicator.dart';

class FundingPage extends StatelessWidget {
  const FundingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FundProjectProvider()),
        ChangeNotifierProvider(create: (_) => FundingGoalProvider()),
        ChangeNotifierProvider(create: (_) => ProjectNameProvider()),
        ChangeNotifierProvider(create: (_) => ProjectTokenProvider()),
        ChangeNotifierProvider(create: (_) => ProjectDeadlineProvider()),
      ],
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 5, right: 5),
          child: Column(
            children: [
              const FundingPageControllView(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackButton(),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.question_mark)),
                ],
              ),
              const FundingPageView()
            ],
          ),
        ),
      ),
    );
  }
}

class FundingPageView extends StatelessWidget {
  const FundingPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fundingPageProvider = context.watch<FundProjectProvider>();
    return Expanded(
      child: PageView(
        // physics: const NeverScrollableScrollPhysics(),
        controller: fundingPageProvider.pageController,
        onPageChanged: fundingPageProvider.pageChanged,
        children: [
          const FundingGoalPage(),
          const ProjectNamePage(),
          const TokenNamePage(),
          const ProjectDeadlinePage(),
          Container(
            height: 300,
            width: 300,
            color: Colors.grey,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class FundingPageControllView extends StatelessWidget {
  const FundingPageControllView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fundingPageProvider = context.watch<FundProjectProvider>();

    return FlowIndicator(
      currentPage: fundingPageProvider.currentPage,
      numberOfPage: fundingPageProvider.numberOfPage,
    );
  }
}
