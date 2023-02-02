import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_management_provider.dart';
import 'package:tribes_crowdfunding_interview_project/styles/spacing.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/custom_text_button.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/user_search_delegate.dart';

class ProjectManagementPage extends StatelessWidget {
  const ProjectManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<ProjectManagementProvider>();
    return Container(
      padding: const EdgeInsets.only(
          top: 80, left: Spacing.double, right: Spacing.double),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Management",
            style: TextStyling.header4,
          ),
          Text(
            "Project funds are held in a multisignature wallet for security. Transactions are approved when they reach the signature threshold.",
            style: TextStyling.body,
          ),
          const Divider(),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Signers",
              style: TextStyling.body1,
            ),
            subtitle: Text(
              "Who can sign to approve wallet actions?",
              style: TextStyling.secondaryAlt,
            ),
          ),
          TextField(
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
              hintText: 'name or wallet address',
            ),
            style: TextStyling.body,
            onTap: () {
              showSearch(
                context: context,
                delegate: UserSearchDelegate(onSelect: provider.addSigner),
              );
            },
          ),
          ListTile(
            title: Text("${provider.baseUser.name}"),
          ),
          for (var user in provider.signers)
            ListTile(
              title: Text("${user.name}"),
              trailing: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => provider.removeSigner(user),
              ),
            ),
          const Divider(),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Signature threshold",
              style: TextStyling.body1,
            ),
            subtitle: Text(
              "How many executives must approve wallet actions?",
              style: TextStyling.secondaryAlt,
            ),
          ),
          ListTile(
            title: Text(
                "${provider.signatureThreshold} of ${provider.signatureThresholdLimit}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () => provider.decreaseSignatureThresshold(),
                  icon: const Icon(Icons.remove_circle),
                  color: Colors.blue,
                ),
                IconButton(
                  onPressed: () => provider.increaseSignatureThresshold(),
                  icon: const Icon(Icons.add_circle),
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          const Spacer(),
          if (provider.isCompleted)
            CustomTextButton(
              onPressed: () => provider.submit(context),
              title: "Continue",
            ),
          const Spacer(),
        ],
      ),
    );
  }
}
