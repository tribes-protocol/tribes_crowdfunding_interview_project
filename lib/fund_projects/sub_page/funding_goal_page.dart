import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/funding_goal_provider.dart';
import 'package:tribes_crowdfunding_interview_project/styles/spacing.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/custom_text_button.dart';

class FundingGoalPage extends StatelessWidget {
  const FundingGoalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fundingGoalProvider = context.watch<FundingGoalProvider>();
    return Container(
      padding: const EdgeInsets.only(
          top: 80, left: Spacing.double, right: Spacing.double),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Funding goal",
            style: TextStyling.header4,
          ),
          Padding(
            padding: const EdgeInsets.only(top: Spacing.double),
            child: Text(
              "How much do you want to raise?",
              style: TextStyling.body,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Spacing.double),
            child: TextFormField(
              controller: fundingGoalProvider.amountInUSDController,
              onChanged: fundingGoalProvider.onAmountInUSDChanged,
              keyboardType: TextInputType.number,
              style: TextStyling.header4,
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                hintText: '0',
                suffix: const Text(
                  "USD",
                ),
              ),
            ),
          ),
          TextFormField(
            controller: fundingGoalProvider.amountInCryptoController,
            onChanged: fundingGoalProvider.onAmountInCryptoChanged,
            keyboardType: TextInputType.number,
            style: TextStyling.header4,
            decoration: InputDecoration(
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              hintText: '0',
              suffix: const Text(
                "ETH",
              ),
            ),
          ),
          const Spacer(),
          if (fundingGoalProvider.isCompleted)
            CustomTextButton(
              title: "Continue",
              onPressed: () => fundingGoalProvider.submit(context),
            ),
          const Spacer(),
        ],
      ),
    );
  }
}
