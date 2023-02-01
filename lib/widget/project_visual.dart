import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:tribes_crowdfunding_interview_project/widget/circle_container.dart';

class ProjectVisual extends StatelessWidget {
  final ProjectVisualData? projectVisualData;
  const ProjectVisual({Key? key, this.projectVisualData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (projectVisualData == null ||
        projectVisualData!.projectVisualType == null) {
      return const CircleContainer(
        color: Colors.green,
        child: Text(
          "🍀",
          style: TextStyle(fontSize: 100),
        ),
      );
    }
    var type = projectVisualData!.projectVisualType;
    if (type == ProjectVisualType.isEmoji) {
      return CircleContainer(
        color: projectVisualData!.emojiVisual?.color,
        child: Text(
          '${projectVisualData!.emojiVisual?.emoji?.emoji}',
          style: const TextStyle(fontSize: 100),
        ),
      );
    } else if (type == ProjectVisualType.isImage) {
      return ClipOval(
        child: Image.file(
          File(projectVisualData!.imageVisual!.path!),
          height: 175,
        ),
      );
    } else {
      return const CircleContainer(
        color: Colors.green,
        child: Text(
          "🍀",
          style: TextStyle(fontSize: 100),
        ),
      );
    }
  }
}
