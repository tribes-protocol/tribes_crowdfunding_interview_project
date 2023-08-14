import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
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
          children: [
            Container(
              decoration: BoxDecoration(
                color: context.colors.labelLight1,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            TribeSpaceVertical.double(),
          ],
        ),
      )),
    );
  }
}
