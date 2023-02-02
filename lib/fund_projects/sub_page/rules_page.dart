import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/enum/overfunding_rules.dart';
import 'package:tribes_crowdfunding_interview_project/enum/underfunding_rules.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_rules_provider.dart';
import 'package:tribes_crowdfunding_interview_project/styles/spacing.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/custom_text_button.dart';

class ProjectFudningRulesPage extends StatelessWidget {
  const ProjectFudningRulesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fundingRulesProvider = context.watch<ProjectFundingRulesProvider>();
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
            "Rules",
            style: TextStyling.header4,
          ),
          const Padding(
            padding: EdgeInsets.only(top: Spacing.double),
            child: Divider(),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Over-funding",
              style: TextStyling.body1,
            ),
            subtitle: Text(
              "If you meet your fundraising goal before the deadline",
              style: TextStyling.secondaryAlt,
            ),
          ),
          for (var i = 0; i < (OverFundingRules.values.length); i++)
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                OverFundingRules.values[i].toShortString(),
                style: TextStyling.body,
              ),
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
          const Padding(
            padding: EdgeInsets.only(top: Spacing.double),
            child: Divider(),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Under-funding",
              style: TextStyling.body1,
            ),
            subtitle: Text(
              "If don't meet your goal by the deadline",
              style: TextStyling.secondaryAlt,
            ),
          ),
          for (var i = 0; i < (UnderFundingRules.values.length); i++)
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                UnderFundingRules.values[i].toShortString(),
                style: TextStyling.body,
              ),
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
          const Spacer(),
          if (fundingRulesProvider.isCompleted)
            CustomTextButton(
              onPressed: () => fundingRulesProvider.submit(context),
              title: "Continue",
            ),
          const Spacer()
        ],
      ),
    );
  }
}
