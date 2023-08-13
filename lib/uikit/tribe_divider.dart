import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeDivider extends StatelessWidget {
  const TribeDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        Spacing.double,
      ),
      child: Container(
        width: double.infinity,
        height: 1,
        color: context.colors.labelLight5,
      ),
    );
  }
}
