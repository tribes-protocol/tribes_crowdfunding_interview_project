import 'dart:async';
import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundraising_router.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundraising_state.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/provider/deadline_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/description/provider/description_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/provider/page_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/info/info_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/management/provider/management_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/provider/project_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/reserve/provider/reserve_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/rules/provider/rules_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/provider/token_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/provider/visual_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/provider/fundraising_provider.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_button.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_progress_indicator.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class FundraisingPage extends ConsumerStatefulWidget {
  const FundraisingPage({super.key});

  @override
  ConsumerState<FundraisingPage> createState() => _FundrisingPagePageState();
}

class _FundrisingPagePageState extends ConsumerState<FundraisingPage> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  late Map<WizardStep, _ReadyCallback> _readyProviders;
  late ConfettiController _controllerBottomCenter;
  static const _animationDuration = 1;
  bool _animationPlaying = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref.read(fundraisingControllerProvider.notifier).init());
    });

    _controllerBottomCenter = ConfettiController(
        duration: const Duration(seconds: _animationDuration));

    final controller = ref.read(fundraisingControllerProvider.notifier);

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
      WizardStep.description: () => ref
          .watch(descriptionControllerProvider.select((value) => value.ready)),
      WizardStep.visual: () =>
          ref.watch(visualControllerProvider.select((value) => true)),
      WizardStep.reserve: () =>
          ref.watch(reserveControllerProvider.select((value) => value.ready)),
      WizardStep.management: () =>
          ref.watch(managementControllerProvider.select((value) => true)),
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
        controller.setTokenName(next.tokenName);
      }
    });

    ref.listenManual(descriptionControllerProvider, (previous, next) {
      if (next.ready) {
        controller.setDescription(next.description);
      }
    });

    ref.listenManual(visualControllerProvider, (previous, next) {
      controller.setVisual(next.visualType, next.color);
    });

    ref.listenManual(rulesControllerProvider, (previous, next) {
      if (next.ready) {
        controller.setRules(next.overfunding, next.underfunding);
      }
    });

    ref.listenManual(deadlineControllerProvider, (previous, next) {
      if (next.ready) {
        controller.setDeadline(next.deadline!);
      }
    });

    ref.listenManual(reserveControllerProvider, (previous, next) {
      if (next.ready) {
        controller.setSigners(next.users);
      }
    });

    ref.listenManual(managementControllerProvider, (previous, next) {
      controller.setMangement(next.users, next.treshold);
    });

    ref.listenManual(
        fundraisingControllerProvider.select((value) => value.currentStep),
        (previous, next) {
      final navigation = next;
      Navigator.of(_navigatorKey.currentContext!).pushReplacementNamed(
        navigation.step.name,
        arguments: navigation.params,
      );
    });

    super.initState();
  }

  @override
  void dispose() {
    _controllerBottomCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(fundraisingControllerProvider.notifier);
    final state = ref.watch(fundraisingControllerProvider);
    final stepReady = _readyProviders[state.currentStep.step]!.call();
    Future<bool> onBack() async {
      if (state.progress > 0) {
        controller.goBack();
      } else {
        context.pop();
      }

      return false;
    }

    return WillPopScope(
      onWillPop: onBack,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TribeSpaceVertical.standard(),
              TribeProgressIndicator(
                steps: state.steps,
                progress: state.progress,
              ),
              TribeSpaceVertical.standard(),
              Row(
                children: [
                  Transform.flip(
                    flipX: true,
                    child: IconButton(
                      icon: SvgPicture.asset(Assets.icons.arrowRight),
                      onPressed: onBack,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: SvgPicture.asset(Assets.icons.info),
                    onPressed: () {
                      context.pushNamed(InfoContract.name);
                    },
                  ),
                ],
              ),
              Expanded(
                child: Navigator(
                  key: _navigatorKey,
                  initialRoute: state.initialStep.name,
                  onGenerateRoute: FundraisingRouter.onGenerateRoute,
                ),
              ),
              ConfettiWidget(
                  confettiController: _controllerBottomCenter,
                  blastDirection: -pi / 2,
                  emissionFrequency: 0.01,
                  numberOfParticles: 20,
                  maxBlastForce: 100,
                  minBlastForce: 80,
                  gravity: 0.3,
                  child: const SizedBox.shrink()),
              Padding(
                padding: const EdgeInsets.all(Spacing.double),
                child: TribeButton(
                  text: context.localisation.commoContinue,
                  onPressed: stepReady
                      ? () async {
                          if (!_animationPlaying) {
                            FocusManager.instance.primaryFocus?.unfocus();
                            if (!state.lastStep) {
                              if (state.currentStep.step == WizardStep.goal) {
                                _controllerBottomCenter.play();
                                _animationPlaying = true;
                                await Future.delayed(
                                  const Duration(seconds: _animationDuration),
                                );
                                _animationPlaying = false;
                              }

                              controller.next();
                            } else {
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                context.replaceNamed(PreviewContract.name,
                                    extra: PreviewParams(
                                      type: state.type!,
                                      background: state.background!,
                                      money: state.money!,
                                      token: state.token!,
                                      name: state.name!,
                                      tokenName: state.tokenName!,
                                      description: state.description!,
                                      deadline: state.deadline!,
                                      signers: state.signers,
                                      managers: state.managers,
                                      managersTreshold: state.managersTreshold,
                                    ));
                              });
                            }
                          }
                        }
                      : null,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

typedef _ReadyCallback<T> = bool Function();
