import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeMarkdownText extends StatelessWidget {
  const TribeMarkdownText({
    super.key,
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacing.standard),
      decoration: BoxDecoration(
          color: context.colors.labelLight6,
          borderRadius: BorderRadius.circular(Spacing.hairline)),
      height: 300,
      width: 400,
      child: MarkdownBody(
        selectable: true,
        data: data,
      ),
    );
  }
}