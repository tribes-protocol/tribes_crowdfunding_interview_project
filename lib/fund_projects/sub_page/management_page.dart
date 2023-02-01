import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_management_provider.dart';
import 'package:tribes_crowdfunding_interview_project/widget/user_search_delegate.dart';

class ProjectManagementPage extends StatelessWidget {
  const ProjectManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<ProjectManagementProvider>();
    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Management"),
          const Text(
              "Project funds are held in a multisignature wallet for security. Transactions are approved when they reach the signature threshold."),
          const Divider(),
          const Text("Signers"),
          const Text("Who can sign to approve wallet actions?"),
          TextField(
            decoration: const InputDecoration.collapsed(
                hintText: 'name or wallet address'),
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
          const Text("Signature threshold"),
          const Text("How many executives must approve wallet actions?"),
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
          if (provider.isCompleted)
            TextButton(
              onPressed: () => provider.submit(context),
              child: const Text("Continue"),
            )
        ],
      ),
    );
  }
}
