import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/funding_goal_provider.dart';

class FundingGoalPage extends StatelessWidget {
  const FundingGoalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fundingGoalProvider = context.watch<FundingGoalProvider>();
    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Funding goal"),
          const Text("How much do you want to raise?"),
          TextFormField(
            controller: fundingGoalProvider.amountInUSDController,
            onChanged: fundingGoalProvider.onAmountInUSDChanged,
          ),
          TextFormField(
            controller: fundingGoalProvider.amountInCryptoController,
            onChanged: fundingGoalProvider.onAmountInCryptoChanged,
          ),
          if (fundingGoalProvider.isCompleted)
            TextButton(
              onPressed: () => fundingGoalProvider.submit(context),
              child: const Text("Continue"),
            )
        ],
      ),
    );
  }
}
