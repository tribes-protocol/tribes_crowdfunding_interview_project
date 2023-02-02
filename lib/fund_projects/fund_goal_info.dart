import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/styles/spacing.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/custom_text_button.dart';

class FundingGoalInfo extends StatelessWidget {
  const FundingGoalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          padding: const EdgeInsets.only(top: 80, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Funding goal", style: TextStyling.header4),
              Padding(
                padding: const EdgeInsets.only(top: Spacing.double),
                child: Text(
                    "Lorem ipsum crypto hipster aren’t we all worried about things that don’t matter, show up, get paid, hold on to your breath while you plan your escape.",
                    style: TextStyling.body),
              ),
              Padding(
                padding: const EdgeInsets.only(top: Spacing.double),
                child: Text("Sub header", style: TextStyling.body1),
              ),
              Padding(
                padding: const EdgeInsets.only(top: Spacing.double),
                child: Text(
                    "Lorem ipsum crypto hipster aren’t we all worried about things that don’t matter, show up, get paid, hold on to your breath while you plan your escape.",
                    style: TextStyling.body),
              ),
              Padding(
                padding: const EdgeInsets.only(top: Spacing.double),
                child: Text("Sub header", style: TextStyling.body1),
              ),
              Padding(
                padding: const EdgeInsets.only(top: Spacing.double),
                child: Text(
                    "Lorem ipsum crypto hipster aren’t we all worried about things that don’t matter, show up, get paid, hold on to your breath while you plan your escape.",
                    style: TextStyling.body),
              ),
              const Spacer(),
              CustomTextButton(
                title: "Done",
                onPressed: () => Navigator.pop(context),
              ),
              const Spacer(),
            ],
          )),
    );
  }
}
