import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/class/utilities.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_token_provider.dart';

class TokenNamePage extends StatelessWidget {
  const TokenNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var projectTokenProvider = context.watch<ProjectTokenProvider>();
    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Token"),
          const Text(
            "Choose a symbol for the project's token, like you'd see on a stock ticker",
          ),
          TextFormField(
            controller: projectTokenProvider.projectTokenController,
            onChanged: projectTokenProvider.onTokenNameChanged,
            inputFormatters: [UpperCaseTextFormatter()],
          ),
          if (projectTokenProvider.projectToken != null)
            Text("1 ETH = 10,000 \$${projectTokenProvider.projectToken}"),
          if (projectTokenProvider.isCompleted)
            TextButton(
              onPressed: () => projectTokenProvider.submit(context),
              child: const Text("Continue"),
            ),
        ],
      ),
    );
  }
}
