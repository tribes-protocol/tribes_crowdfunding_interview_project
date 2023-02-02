import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/custom_text_button.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/project_visual.dart';

class ProjectPreviewPage extends StatelessWidget {
  final ProjectFundingData fundingData;
  const ProjectPreviewPage({
    Key? key,
    required this.fundingData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fundingGoal = fundingData.fundingGoal;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackButton(),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.info)),
                ],
              ),
              Text(
                "Project preview",
                style: TextStyling.header4,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: ProjectVisual(
                    projectVisualData: fundingData.projectVisualData!,
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Goal",
                  style: TextStyling.body,
                ),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "${fundingGoal?.getAmountInUSD()}",
                      style: TextStyling.body1,
                    ),
                    Text(
                      "${fundingGoal?.getAmountInCrypto()}",
                      style: TextStyling.secondaryAlt,
                    )
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Name",
                  style: TextStyling.body,
                ),
                trailing: Text(
                  "${fundingData.projectName}",
                  style: TextStyling.body1,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text("Token"),
                trailing: Text(
                  "\$${fundingData.tokenName}",
                  style: TextStyling.body1,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Description",
                  style: TextStyling.body,
                ),
                trailing:
                    const TextButton(onPressed: null, child: Text("Edit")),
                subtitle: Text(
                  "${fundingData.description}",
                  style: TextStyling.secondaryAlt,
                ),
              ),
              const Divider(),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Deadline",
                  style: TextStyling.body,
                ),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '7 days',
                      style: TextStyling.body1,
                    ),
                    Text(
                      DateFormat.yMMM().format(fundingData.deadLine!),
                      style: TextStyling.secondaryAlt,
                    ),
                  ],
                ),
              ),
              CustomTextButton(
                  onPressed: () {}, title: "Launch Funding \$9.99"),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Management",
                  style: TextStyling.body,
                ),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "${fundingData.fundingManagementInfo?.getNumberOfSigners()} signer(s)",
                      style: TextStyling.body1,
                    ),
                    Text(
                      "${fundingData.fundingManagementInfo?.getThreshold()}/${fundingData.fundingManagementInfo?.getThresholdLimit()} signature threshold",
                      style: TextStyling.secondaryAlt,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
