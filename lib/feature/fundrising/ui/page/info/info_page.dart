import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_button.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class InfoPage extends ConsumerStatefulWidget {
  const InfoPage({super.key});

  @override
  ConsumerState<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends ConsumerState<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.localisation.infoLabel,
              style: context.textStyles.secondary,
            ),
            TribeSpaceVertical.double(),
            Text(
              context.localisation.infoTitle,
              style: context.textStyles.header4,
            ),
            TribeSpaceVertical.double(),
            Text(
              context.localisation.infoText,
              style: context.textStyles.body,
            ),
            TribeSpaceVertical.double(),
            Text(
              context.localisation.infoSubtitle,
              style:
                  context.textStyles.body.copyWith(fontWeight: FontWeight.w700),
            ),
            TribeSpaceVertical.double(),
            Text(
              context.localisation.infoText,
              style: context.textStyles.body,
            ),
            TribeSpaceVertical.double(),
            Text(
              context.localisation.infoSubtitle,
              style:
                  context.textStyles.body.copyWith(fontWeight: FontWeight.w700),
            ),
            TribeSpaceVertical.double(),
            Text(
              context.localisation.infoText,
              style: context.textStyles.body,
            ),
            const Spacer(),
            TribeButton(
              text: context.localisation.commoDone,
              onPressed: () {
                context.pop();
              },
            )
          ],
        ),
      )),
    );
  }
}
