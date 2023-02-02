import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_reserve_provider.dart';
import 'package:tribes_crowdfunding_interview_project/styles/spacing.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/amount_dialog.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/base_user_title.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/custom_text_button.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/user_search_delegate.dart';

class ProjectReservePage extends StatelessWidget {
  const ProjectReservePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<ProjectReserveProvider>();
    return Container(
      padding: const EdgeInsets.only(
          top: 80, left: Spacing.double, right: Spacing.double),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Reserve",
              style: TextStyling.header4,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                "You may reserve a portion of the total tokens for specific people.",
                style: TextStyling.body,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: TextField(
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
                    delegate:
                        UserSearchDelegate(onSelect: provider.addReserveUser),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: UserTile(
                title: Text(
                  "${provider.baseUser.user?.name}",
                  style: TextStyling.body,
                ),
                trailing: Text("${provider.baseUser.amount}%"),
                onPressed: () async {
                  var newAmount = await showDialog<double?>(
                      context: context,
                      builder: (_) => const EditAmountDialog());
                  if (newAmount != null) {
                    provider.changeBaseUserAmount(newAmount);
                  }
                },
              ),
            ),
            for (var index = 0;
                index < provider.listReserveData.length;
                index++)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: UserTile(
                  title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${provider.listReserveData[index].user?.name}"),
                        GestureDetector(
                          onTap: () => provider.removeReserveUser(
                              provider.listReserveData[index]),
                          child: const Icon(Icons.close),
                        ),
                      ]),
                  trailing: Text("${provider.listReserveData[index].amount}%"),
                  onPressed: () async {
                    var newAmount = await showDialog<double?>(
                        context: context,
                        builder: (_) => const EditAmountDialog());
                    if (newAmount != null) {
                      provider.changeAmount(index, newAmount);
                    }
                  },
                  // trailing: IconButton(
                  //   onPressed: () {
                  //     provider.removeReserveUser(provider.listReserveData[index]);
                  //   },
                  //   icon: const Icon(Icons.close),
                  // ),
                ),
              ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              title: const Text("Issued to founders"),
              trailing: Text("${provider.issuedToFunder}%"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Spacing.x8),
              child: CustomTextButton(
                  onPressed: () => provider.submit(context), title: "Continue"),
            ),
          ],
        ),
      ),
    );
  }
}
