import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/core/animations/tribe_fade_transition.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_button.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(
          16,
          24,
          16,
          16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TribeFadeTransition(
              child: Container(
                width: 240,
                height: 240,
                decoration: BoxDecoration(
                  color: context.colors.labelLight6,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            TribeSpaceVertical.double(),
            TribeFadeTransition(
              delay: const Duration(milliseconds: 150),
              child: Text(
                context.localisation.introTitle,
                style: context.textStyles.header3,
              ),
            ),
            TribeSpaceVertical.double(),
            TribeFadeTransition(
              delay: const Duration(milliseconds: 200),
              child: Text(
                context.localisation.introSubtitle,
                style: context.textStyles.body,
              ),
            ),
            TribeSpaceVertical.double(),
            TribeFadeTransition(
              delay: const Duration(milliseconds: 225),
              child: Text(
                context.localisation.introDescription,
                style: context.textStyles.body,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TribeButton(
                  text: context.localisation.commonStart, onPressed: () {}),
            ),
          ],
        ),
      )),
    );
  }
}
