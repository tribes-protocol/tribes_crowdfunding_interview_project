import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:tribes_crowdfunding_interview_project/fund_projects/sub_page/emoji_picking_page.dart';
import 'package:tribes_crowdfunding_interview_project/provider/project_visual_provider.dart';
import 'package:tribes_crowdfunding_interview_project/widget/circle_container.dart';

class ProjectVisualPage extends StatelessWidget {
  const ProjectVisualPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var projectVisualProvider = context.watch<ProjectVisualProvider>();

    Widget getDisplay(ProjectVisualType? type) {
      if (type == ProjectVisualType.isEmoji) {
        return CircleContainer(
          color: projectVisualProvider.emojiVisual!.color,
          child: Text(
            '${projectVisualProvider.emojiVisual?.emoji?.emoji}',
            style: const TextStyle(fontSize: 100),
          ),
        );
      } else if (type == ProjectVisualType.isImage) {
        return ClipOval(
          child: Image.file(
            File(projectVisualProvider.imageVisual!.path!),
            height: 175,
          ),
        );
      }
      return const CircleContainer(
        color: Colors.green,
        child: Text(
          "🍀",
          style: TextStyle(fontSize: 100),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Visual"),
          const Text("Add a visual to use as your project's logo and token"),
          Center(
            child: getDisplay(projectVisualProvider.visualType),
          ),
          TextButton(
              onPressed: () async {
                var pickedEmoji = await Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (_) => const EmojiPickingPage()))
                    as EmojiVisual?;
                if (pickedEmoji != null) {
                  projectVisualProvider.setEmojiVisual(pickedEmoji);
                }
              },
              child: const Text("Emoji")),
          TextButton(
              onPressed: () {
                projectVisualProvider.getImageVisual();
              },
              child: const Text("Image")),
          if (projectVisualProvider.isCompleted)
            TextButton(
              onPressed: () => projectVisualProvider.submit(context),
              child: const Text("Continue"),
            ),
        ],
      ),
    );
  }
}
