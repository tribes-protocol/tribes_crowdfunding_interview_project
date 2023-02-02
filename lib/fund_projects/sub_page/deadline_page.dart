import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_deadline_provider.dart';
import 'package:tribes_crowdfunding_interview_project/styles/spacing.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/custom_text_button.dart';

class ProjectDeadlinePage extends StatelessWidget {
  const ProjectDeadlinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var projectDeadlineProvider = context.watch<ProjectDeadlineProvider>();
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
            "Deadline",
            style: TextStyling.header4,
          ),
          Padding(
            padding: const EdgeInsets.only(top: Spacing.double),
            child: Text(
              "When does funding close?",
              style: TextStyling.body,
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.only(top: Spacing.double, bottom: Spacing.double),
            child: Divider(),
          ),
          for (var i = 0; i < (Deadlines.values.length - 1); i++)
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                Deadlines.values[i].toShortString(),
                style: TextStyling.body,
              ),
              onTap: () =>
                  projectDeadlineProvider.setDeadline(Deadlines.values[i]),
              trailing:
                  Deadlines.values[i] == projectDeadlineProvider.chosenDeadline
                      ? const Icon(
                          Icons.check_circle,
                          color: Colors.blue,
                        )
                      : null,
            ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Choose a Date ...",
              style: TextStyling.body,
            ),
            subtitle: projectDeadlineProvider.chosenDeadline == Deadlines.custom
                ? Text(projectDeadlineProvider.chosenDate.toString())
                : null,
            trailing: projectDeadlineProvider.chosenDeadline == Deadlines.custom
                ? const Icon(
                    Icons.check_circle,
                    color: Colors.blue,
                  )
                : null,
            onTap: () async {
              var currentDate = DateTime.now();
              var chosenDate = await showDatePicker(
                context: context,
                initialDate: currentDate,
                firstDate: currentDate,
                lastDate: DateTime(currentDate.year + 1),
              );
              if (chosenDate != null && currentDate.compareTo(chosenDate) < 0) {
                projectDeadlineProvider.setCustomeDeadline(chosenDate);
              }
            },
          ),
          const Spacer(),
          if (projectDeadlineProvider.isCompleted)
            CustomTextButton(
              onPressed: () => projectDeadlineProvider.submit(context),
              title: "Continue",
            ),
          const Spacer()
        ],
      ),
    );
  }
}
