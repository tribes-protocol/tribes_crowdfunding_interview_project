import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_reserve_provider.dart';
import 'package:tribes_crowdfunding_interview_project/widget/amount_dialog.dart';
import 'package:tribes_crowdfunding_interview_project/widget/user_search_delegate.dart';

class ProjectReservePage extends StatelessWidget {
  const ProjectReservePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<ProjectReserveProvider>();
    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Reserve"),
          const Text("Choose a name for this fundraising project"),
          TextButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: UserSearchDelegate(
                  onSelect: provider.addReserveUser,
                ),
              );
            },
            child: const Text("wall"),
          ),
          for (var index = 0; index < provider.listReserveData.length; index++)
            ListTile(
              title: Text("${provider.listReserveData[index].user?.name}"),
              subtitle: Text("${provider.listReserveData[index].amount}%"),
              onTap: () async {
                var newAmount = await showDialog<double?>(
                    context: context, builder: (_) => const EditAmountDialog());
                if (newAmount != null) {
                  provider.changeAmount(index, newAmount);
                }
              },
              trailing: IconButton(
                onPressed: () {
                  provider.removeReserveUser(provider.listReserveData[index]);
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ListTile(
            title: const Text("Issued to founders"),
            trailing: Text("${provider.issuedToFunder}%"),
          ),
          TextButton(
              onPressed: () => provider.submit(context),
              child: const Text("Continue")),
        ],
      ),
    );
  }
}
