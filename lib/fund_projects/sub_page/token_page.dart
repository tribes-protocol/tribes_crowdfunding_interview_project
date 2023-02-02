import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/class/utilities.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_token_provider.dart';
import 'package:tribes_crowdfunding_interview_project/styles/spacing.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/custom_text_button.dart';

class TokenNamePage extends StatelessWidget {
  const TokenNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var projectTokenProvider = context.watch<ProjectTokenProvider>();
    return Container(
      padding: const EdgeInsets.only(
        top: 80,
        left: Spacing.double,
        right: Spacing.double,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Token",
            style: TextStyling.header4,
          ),
          Text(
            "Choose a symbol for the project's token, like you'd see on a stock ticker",
            style: TextStyling.body,
          ),
          TextFormField(
            controller: projectTokenProvider.projectTokenController,
            onChanged: projectTokenProvider.onTokenNameChanged,
            inputFormatters: [UpperCaseTextFormatter()],
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
                hintText: 'Token',
                prefix: const Text("\$")),
          ),
          if (projectTokenProvider.projectToken != null)
            Text(
              "1 ETH = 10,000 \$${projectTokenProvider.projectToken}",
              style: TextStyling.secondaryAlt,
            ),
          const Spacer(),
          if (projectTokenProvider.isCompleted)
            CustomTextButton(
              onPressed: () => projectTokenProvider.submit(context),
              title: "Continue",
            ),
          const Spacer(),
        ],
      ),
    );
  }
}
