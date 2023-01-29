import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/fund_projects/funding_page.dart';
import 'package:tribes_crowdfunding_interview_project/styles/spacing.dart';

class StartFundProjectPage extends StatelessWidget {
  const StartFundProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const FundingPage(),
              ),
            );
          },
          child: Container(
              padding: const EdgeInsets.all(Spacing.double),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(Spacing.standard),
              ),
              child: const Text(
                'Start a crowdfund',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              )),
        ),
      ),
    );
  }
}
