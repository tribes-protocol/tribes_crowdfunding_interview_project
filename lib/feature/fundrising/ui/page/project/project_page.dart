import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/provider/project_provider.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_input_text.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class ProjectPage extends ConsumerStatefulWidget {
  const ProjectPage({super.key});

  @override
  ConsumerState<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends ConsumerState<ProjectPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref.read(projectControllerProvider.notifier).init());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(projectControllerProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  context.localisation.projectTitle,
                  style: context.textStyles.header4,
                ),
                TribeSpaceVertical.double(),
                Text(
                  context.localisation.projectSubtitle,
                  style: context.textStyles.body,
                ),
                TribeSpaceVertical.double(),
                TribeInputText(
                  textInputType: TribeInputType.text,
                  onValueChange: controller.onNameChanged,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
