import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:tribes_crowdfunding_interview_project/fund_projects/sub_page/emoji_picking_page.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_visual_provider.dart';
import 'package:tribes_crowdfunding_interview_project/styles/spacing.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/custom_text_button.dart';
import 'package:tribes_crowdfunding_interview_project/widgets/project_visual.dart';

class ProjectVisualPage extends StatelessWidget {
  const ProjectVisualPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var projectVisualProvider = context.watch<ProjectVisualProvider>();

    return Container(
      padding: const EdgeInsets.only(
          top: 80, left: Spacing.double, right: Spacing.double),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Visual",
            style: TextStyling.header4,
          ),
          Text(
            "Add a visual to use as your project's logo and token",
            style: TextStyling.body,
          ),
          const SizedBox(
            height: 60,
          ),
          Center(
            child: ProjectVisual(
              projectVisualData: projectVisualProvider.projectVisualData,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: CustomTextButton(
              onPressed: () async {
                var pickedEmoji = await Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (_) => const EmojiPickingPage()))
                    as EmojiVisual?;
                if (pickedEmoji != null) {
                  projectVisualProvider.setEmojiVisual(pickedEmoji);
                }
              },
              title: "Emoji",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: CustomTextButton(
              onPressed: () {
                projectVisualProvider.getImageVisual();
              },
              title: "Image",
            ),
          ),
          if (projectVisualProvider.isCompleted)
            CustomTextButton(
              style: TextButtonStyle.white,
              onPressed: () => projectVisualProvider.submit(context),
              title: "Continue",
            ),
          const Spacer()
        ],
      ),
    );
  }
}
