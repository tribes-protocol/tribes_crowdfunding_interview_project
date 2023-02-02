import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_description_provider.dart';
import 'package:tribes_crowdfunding_interview_project/styles/spacing.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/custom_text_button.dart';

class ProjectDescriptionPage extends StatelessWidget {
  const ProjectDescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var projectDescriptionProvider =
        context.watch<ProjectDescriptionProvider>();
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
            "Description",
            style: TextStyling.header4,
          ),
          Padding(
            padding: const EdgeInsets.only(top: Spacing.double),
            child: Text(
              "Quickly explain how you'll use the funds",
              style: TextStyling.body,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Spacing.double),
            child: Text(
              "Markdown formatting works",
              style: TextStyling.secondaryAlt,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Spacing.double),
            child: DefaultTabController(
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
                    tabs: [
                      Text(
                        "Write",
                        style: TextStyling.tabOption,
                      ),
                      Text(
                        "Preview",
                        style: TextStyling.tabOption,
                      ),
                    ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Spacing.double),
            child: TextFormField(
              controller:
                  projectDescriptionProvider.projectDescriptionController,
              onChanged: projectDescriptionProvider.onProjectDescriptionChanged,
              style: TextStyling.body,
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
                hintText: 'You can add this later, too',
              ),
              minLines: 7,
              maxLines: 9,
            ),
          ),
          const Spacer(),
          if (projectDescriptionProvider.isCompleted)
            CustomTextButton(
              onPressed: () => projectDescriptionProvider.submit(context),
              title: "Continue",
            ),
          const Spacer(),
        ],
      ),
    );
  }
}
