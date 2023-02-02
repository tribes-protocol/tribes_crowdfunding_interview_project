import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/fund_projects/funding_page.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/custom_text_button.dart';

class StartFundProjectPage extends StatelessWidget {
  const StartFundProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: kToolbarHeight,
            ),
            Container(
              color: Colors.grey,
              height: 240,
              width: 240,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Fund your project",
              style: TextStyling.header3,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Name your project and funding goal, then invite people to participate.",
              style: TextStyling.body,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "When people fund your project, they’ll immediately receive tokens in your project proportional to their contribution.",
              style: TextStyling.body,
            ),
            const Spacer(
              flex: 2,
            ),
            CustomTextButton(
              title: "Start",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const FundingPage(),
                  ),
                );
              },
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
