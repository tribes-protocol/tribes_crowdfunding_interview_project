import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_name_provider.dart';
import 'package:tribes_crowdfunding_interview_project/styles/spacing.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/custom_text_button.dart';

class ProjectNamePage extends StatelessWidget {
  const ProjectNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var projectNameProvider = context.watch<ProjectNameProvider>();
    return Container(
      padding: const EdgeInsets.only(
          top: 80, left: Spacing.double, right: Spacing.double),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Project Name",
            style: TextStyling.header4,
          ),
          Text(
            "Choose a name for this fundraising project",
            style: TextStyling.body,
          ),
          TextFormField(
            onChanged: projectNameProvider.onProjectNameChanged,
            controller: projectNameProvider.projectNameController,
            style: TextStyling.header4,
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
              hintText: 'Name',
            ),
          ),
          const Spacer(),
          if (projectNameProvider.isCompleted)
            CustomTextButton(
                onPressed: () => projectNameProvider.submit(context),
                title: "Continue"),
          const Spacer(),
        ],
      ),
    );
  }
}
