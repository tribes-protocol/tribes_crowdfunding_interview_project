import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:tribes_crowdfunding_interview_project/widget/project_visual.dart';

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
        padding: const EdgeInsets.only(top: 50, left: 5, right: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackButton(),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.question_mark)),
                ],
              ),
              const Text("Project preview"),
              Center(
                child: ProjectVisual(
                  projectVisualData: fundingData.projectVisualData!,
                ),
              ),
              ListTile(
                title: const Text("Goal"),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("\$${fundingGoal?.getAmountInUSD()}"),
                    Text("${fundingGoal?.getAmountInCrypto()}")
                  ],
                ),
              ),
              ListTile(
                title: const Text("Name"),
                trailing: Text("${fundingData.projectName}"),
              ),
              ListTile(
                title: const Text("Token"),
                trailing: Text("\$${fundingData.tokenName}"),
              ),
              ListTile(
                title: const Text("Description"),
                trailing:
                    const TextButton(onPressed: null, child: Text("Edit")),
                subtitle: Text("${fundingData.description}"),
              ),
              const Divider(),
              ListTile(
                title: const Text("Deadline"),
                trailing: Text(
                  fundingData.deadLine.toString(),
                ),
              ),
              TextButton(onPressed: () {}, child: const Text("Launch Funding")),
              ListTile(
                title: const Text("Management"),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        "${fundingData.fundingManagementInfo?.getNumberOfSigners()} signer(s)"),
                    Text(
                        "${fundingData.fundingManagementInfo?.getThreshold()}/${fundingData.fundingManagementInfo?.getThresholdLimit()} signature threshold")
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
