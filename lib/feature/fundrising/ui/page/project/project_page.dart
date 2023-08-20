import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/provider/project_provider.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_app_bar.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_input_text.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class ProjectPage extends ConsumerStatefulWidget {
  const ProjectPage({super.key, this.params});

  final ProjectParams? params;

  @override
  ConsumerState<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends ConsumerState<ProjectPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(projectControllerProvider.notifier)
          .init(widget.params)
          .then((value) {
        if (widget.params != null) {
          _controller.text = widget.params!.name;
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(projectControllerProvider.notifier);
    final state = ref.watch(projectControllerProvider);
    Future<bool> onBack() async {
      context.pop(ProjectResult(
        name: state.projectName,
      ));
      return true;
    }

    return WillPopScope(
        onWillPop: onBack,
        child: Scaffold(
          appBar: widget.params != null
              ? TribeAppBar(
                  onBack: onBack,
                )
              : null,
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Spacing.double),
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
                      controller: _controller,
                      intial: state.projectName,
                      hint: context.localisation.commoName,
                      autocorrect: false,
                      textCapitalization: TextCapitalization.none,
                      onValueChange: controller.onNameChanged,
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
