import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundrising_router.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundrising_state.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/provider/deadline_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/description/provider/description_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/provider/page_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/provider/project_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/reserve/provider/reserve_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/rules/provider/rules_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/provider/token_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/provider/visual_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/provider/fundrising_provider.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_button.dart';

class FundrisingPage extends ConsumerStatefulWidget {
  const FundrisingPage({super.key});

  @override
  ConsumerState<FundrisingPage> createState() => _FundrisingPagePageState();
}

class _FundrisingPagePageState extends ConsumerState<FundrisingPage> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  late Map<WizardStep, _ReadyCallback> _readyProviders;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref.read(fundrisingControllerProvider.notifier).init());
    });

    final controller = ref.read(fundrisingControllerProvider.notifier);

    _readyProviders = {
      WizardStep.goal: () =>
          ref.watch(goalControllerProvider.select((value) => value.ready)),
      WizardStep.name: () =>
          ref.watch(projectControllerProvider.select((value) => value.ready)),
      WizardStep.token: () =>
          ref.watch(tokenControllerProvider.select((value) => value.ready)),
      WizardStep.deadline: () =>
          ref.watch(deadlineControllerProvider.select((value) => value.ready)),
      WizardStep.rules: () =>
          ref.watch(rulesControllerProvider.select((value) => value.ready)),
      WizardStep.description: () =>
          ref.watch(descriptionControllerProvider.select((value) => value.ready)),
      WizardStep.visual: () =>
          ref.watch(visualControllerProvider.select((value) => true)),
      WizardStep.reserve: () =>
          ref.watch(reserveControllerProvider.select((value) => true)),
    };

    ref.listenManual(goalControllerProvider, (previous, next) {
      if (next.ready) {
        controller.setGoal(next.money, next.token.value!);
      }
    });

    ref.listenManual(projectControllerProvider, (previous, next) {
      if (next.ready) {
        controller.setName(next.projectName);
      }
    });

    ref.listenManual(tokenControllerProvider, (previous, next) {
      if (next.ready) {
        controller.setName(next.tokenName);
      }
    });

    ref.listenManual(deadlineControllerProvider, (previous, next) {
      if (next.ready) {
        controller.setDeadline(next.deadline!);
      }
    });

    ref.listenManual(deadlineControllerProvider, (previous, next) {
      if (next.ready) {
        controller.setDeadline(next.deadline!);
      }
    });

    ref.listenManual(reserveControllerProvider, (previous, next) {
      controller.setSigners(next.users);
    });



    ref.listenManual(fundrisingControllerProvider.select((value) => value.currentStep), (previous, next) {
      final navigation = next;
      Navigator.of(_navigatorKey.currentContext!).pushNamed(
        navigation.step.name,
        arguments: navigation.params,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(fundrisingControllerProvider.notifier);
    final state = ref.watch(fundrisingControllerProvider);
    final stepReady = _readyProviders[state.currentStep.step]!.call();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Navigator(
                key: _navigatorKey,
                initialRoute: state.initialStep.name,
                onGenerateRoute: FundrisingRouter.onGenerateRoute,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TribeButton(
                text: context.localisation.commoContinue,
                onPressed: stepReady
                    ? () {
                        controller.next();
                      }
                    : null,
              ),
            )
          ],
        ),
      ),
    );
  }
}

typedef _ReadyCallback<T> = bool Function();
