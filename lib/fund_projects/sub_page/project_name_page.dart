import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_name_provider.dart';

class ProjectNamePage extends StatelessWidget {
  const ProjectNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var projectNameProvider = context.watch<ProjectNameProvider>();
    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Project Name"),
          const Text("Choose a name for this fundraising project"),
          TextFormField(
            onChanged: projectNameProvider.onProjectNameChanged,
            controller: projectNameProvider.projectNameController,
          ),
          if (projectNameProvider.isCompleted)
            TextButton(
                onPressed: () => projectNameProvider.submit(context),
                child: const Text("Continue"))
        ],
      ),
    );
  }
}
