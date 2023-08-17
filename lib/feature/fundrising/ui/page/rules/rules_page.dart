import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/rules/provider/rules_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/rules/rules_state.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_check_list_tile.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_divider.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class RulesPage extends ConsumerStatefulWidget {
  const RulesPage({super.key});

  @override
  ConsumerState<RulesPage> createState() => _RulesPageState();
}

class _RulesPageState extends ConsumerState<RulesPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref.read(rulesControllerProvider.notifier).init());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(rulesControllerProvider.notifier);
    final state = ref.watch(rulesControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.localisation.rulesTitle,
                style: context.textStyles.header4,
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  const TribeDivider(),
                  Text(
                    context.localisation.overfundingTitle,
                    style: context.textStyles.body.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TribeSpaceVertical.half(),
                  Text(
                    context.localisation.overfundingSubtitle,
                    style: context.textStyles.secondary,
                  ),
                  TribeCheckListTile(
                    title: context.localisation.overfundingAllow,
                    checked: state.overfunding == Overfunding.allow,
                    onChecked: (value) {
                      controller.setOverfunding(Overfunding.allow);
                    },
                  ),
                  TribeCheckListTile(
                    title: context.localisation.overfundingStop,
                    checked: state.overfunding == Overfunding.stop,
                    onChecked: (value) {
                      controller.setOverfunding(Overfunding.stop);
                    },
                  ),
                  const TribeDivider(),
                  Text(
                    context.localisation.underfundingTitle,
                    style: context.textStyles.body.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TribeSpaceVertical.half(),
                  Text(
                    context.localisation.underfundingSubtitle,
                    style: context.textStyles.secondary,
                  ),
                  TribeCheckListTile(
                    title: context.localisation.underfundingReturn,
                    checked: state.underfunding == Underfunding.returns,
                    onChecked: (value) {
                      controller.setUnderfunding(Underfunding.returns);
                    },
                  ),
                  TribeCheckListTile(
                    title: context.localisation.underfundingHold,
                    checked: state.underfunding == Underfunding.hold,
                    onChecked: (value) {
                      controller.setUnderfunding(Underfunding.hold);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
