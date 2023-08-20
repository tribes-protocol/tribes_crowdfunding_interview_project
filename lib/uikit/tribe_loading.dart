import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeLoading extends StatelessWidget {
  const TribeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: Spacing.x8,
        height: Spacing.x8,
        child: CircularProgressIndicator(
          color: context.colors.labelLight6,
        ),
      ),
    );
  }
}
