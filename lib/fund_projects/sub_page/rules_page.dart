import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/enum/overfunding_rules.dart';
import 'package:tribes_crowdfunding_interview_project/enum/underfunding_rules.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_rules_provider.dart';

class ProjectFudningRulesPage extends StatelessWidget {
  const ProjectFudningRulesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fundingRulesProvider = context.watch<ProjectFundingRulesProvider>();
    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Rules"),
          const ListTile(
            title: Text("Over-funding"),
            subtitle:
                Text("If you meet your fundraising goal before the deadline"),
          ),
          for (var i = 0; i < (OverFundingRules.values.length); i++)
            ListTile(
              title: Text(OverFundingRules.values[i].toShortString()),
              onTap: () => fundingRulesProvider
                  .setOverFundingRules(OverFundingRules.values[i]),
              trailing: OverFundingRules.values[i] ==
                      fundingRulesProvider.overFundingRules
                  ? const Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                    )
                  : null,
            ),
          const ListTile(
            title: Text("Under-funding"),
            subtitle: Text("If don't meet your goal by the deadline"),
          ),
          for (var i = 0; i < (UnderFundingRules.values.length); i++)
            ListTile(
              title: Text(UnderFundingRules.values[i].toShortString()),
              onTap: () => fundingRulesProvider
                  .setUnderFundingRules(UnderFundingRules.values[i]),
              trailing: UnderFundingRules.values[i] ==
                      fundingRulesProvider.underFundingRules
                  ? const Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                    )
                  : null,
            ),
          if (fundingRulesProvider.isCompleted)
            TextButton(
              onPressed: () => fundingRulesProvider.submit(context),
              child: const Text("Continue"),
            )
        ],
      ),
    );
  }
}
