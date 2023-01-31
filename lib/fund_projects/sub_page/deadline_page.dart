import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_deadline_provider.dart';

class ProjectDeadlinePage extends StatelessWidget {
  const ProjectDeadlinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var projectDeadlineProvider = context.watch<ProjectDeadlineProvider>();
    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Deadline"),
          const Text("When does funding close?"),
          for (var i = 0; i < (Deadlines.values.length - 1); i++)
            ListTile(
              title: Text(Deadlines.values[i].toShortString()),
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
            title: const Text(
              "Choose a Date ...",
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
          if (projectDeadlineProvider.isCompleted)
            TextButton(
              onPressed: () => projectDeadlineProvider.submit(context),
              child: const Text("Continue"),
            )
        ],
      ),
    );
  }
}
