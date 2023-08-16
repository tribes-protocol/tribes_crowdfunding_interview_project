import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/provider/deadline_provider.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_check_list_tile.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_divider.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class DeadlinePage extends ConsumerStatefulWidget {
  const DeadlinePage({super.key});

  @override
  ConsumerState<DeadlinePage> createState() => _DeadlinePageState();
}

class _DeadlinePageState extends ConsumerState<DeadlinePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref.read(deadlineControllerProvider.notifier).init());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(deadlineControllerProvider.notifier);
    final state = ref.watch(deadlineControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.localisation.deadlineTitle,
                  style: context.textStyles.header4,
                ),
                TribeSpaceVertical.double(),
                Text(
                  context.localisation.deadlineSubtitle,
                  style: context.textStyles.body,
                ),
                const TribeDivider(),
                ListView(
                  shrinkWrap: true,
                  children: state.deadlines
                      .map(
                        (days) => TribeCheckListTile(
                          title: context.localisation.days(days),
                          checked: days == state.deadline,
                          onChecked: (checked) {
                            if (checked) {
                              controller.onDeadlineSected(days);
                            }
                          },
                        ),
                      )
                      .toList(),
                ),
                TribeCheckListTile(
                  title: context.localisation.deadlineChooseDate,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
