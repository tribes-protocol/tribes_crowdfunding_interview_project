import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TribeEmptyState extends StatelessWidget {
  const TribeEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -Spacing.x8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(Assets.lottie.empty),
          Text(
            context.localisation.commonEmpty,
            style: context.textStyles.body,
          ),
        ],
      ),
    );
  }
}
