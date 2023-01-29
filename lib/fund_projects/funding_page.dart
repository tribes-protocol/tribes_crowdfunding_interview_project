import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/fund_project_provider.dart';
import 'package:tribes_crowdfunding_interview_project/widget/flow_indicator.dart';

class FundingPage extends StatelessWidget {
  const FundingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FundProjectPrtovider())
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
    var fundingPageProvider = context.watch<FundProjectPrtovider>();
    return Expanded(
      child: PageView(
        controller: fundingPageProvider.pageController,
        onPageChanged: fundingPageProvider.pageChanged,
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.blue,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.green,
          ),
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
    var fundingPageProvider = context.watch<FundProjectPrtovider>();

    return FlowIndicator(
      currentPage: fundingPageProvider.currentPage,
      numberOfPage: fundingPageProvider.numberOfPage,
    );
  }
}
