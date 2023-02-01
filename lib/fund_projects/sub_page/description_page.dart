import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_description_provider.dart';

class ProjectDescriptionPage extends StatelessWidget {
  const ProjectDescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var projectDescriptionProvider =
        context.watch<ProjectDescriptionProvider>();
    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Description"),
          const Text("Quickly explain how you'll use the funds"),
          const Text("Markdown formatting works"),
          DefaultTabController(
            length: 2,
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25),
              ),
              child: TabBar(
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  tabs: const [
                    Text("Write"),
                    Text("Preview"),
                  ]),
            ),
          ),
          TextFormField(
            controller: projectDescriptionProvider.projectDescriptionController,
            onChanged: projectDescriptionProvider.onProjectDescriptionChanged,
          ),
          if (projectDescriptionProvider.isCompleted)
            TextButton(
              onPressed: () => projectDescriptionProvider.submit(context),
              child: const Text("Continue"),
            )
        ],
      ),
    );
  }
}
