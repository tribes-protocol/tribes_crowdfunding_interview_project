import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/deadline_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/description/description_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/goal_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/management/management_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/provider/preview_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/visual_contract.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_button.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_divider.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_info_tile.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_loading.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_visual.dart';

class PreviewPage extends ConsumerStatefulWidget {
  const PreviewPage({
    super.key,
    required this.params,
  });

  final PreviewParams params;

  @override
  ConsumerState<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends ConsumerState<PreviewPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
          ref.read(previewControllerProvider.notifier).init(widget.params));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(previewControllerProvider.notifier);
    final state =
        ref.watch(previewControllerProvider).mapOrNull((value) => value);
    final now = DateTime.now();

    return Scaffold(
      body: SafeArea(
          child: state != null
              ? ListView(
                  padding: const EdgeInsets.all(Spacing.double),
                  shrinkWrap: true,
                  children: [
                    TribeSpaceVertical.double(),
                    Text(
                      context.localisation.previewTitle,
                      style: context.textStyles.header4,
                    ),
                    TribeSpaceVertical.triple(),
                    TribeVisual(
                      type: state.type,
                      background: state.background,
                      onImagePressed: () async {
                        final result = await context.pushNamed<VisualResult?>(
                            VisualContract.name,
                            extra: VisualParams(
                              type: state.type,
                              background: state.background,
                            ));

                        if (result != null) {
                          controller.updateVisual(result);
                        }
                      },
                    ),
                    TribeInfoTile(
                      title: context.localisation.previewGoal,
                      suffixTitle: '\$${state.money.toStringAsFixed(1)}',
                      suffixSubtitle:
                          '${(state.money * state.token.ratio).toStringAsFixed(1)} ${state.token.type.name.toUpperCase()}',
                      onPressed: () async {
                        final result = await context.pushNamed<GoalResult?>(
                            GoalContract.name,
                            extra: GoalParams(
                              token: state.token,
                              money: state.money,
                              crypto: state.money * state.token.ratio,
                            ));

                        if (result != null) {
                          controller.updateGoal(result);
                        }
                      },
                    ),
                    TribeInfoTile(
                      title: context.localisation.previewName,
                      suffixTitle: '\$${state.name}',
                      onPressed: () async {
                        final result = await context.pushNamed<ProjectResult?>(
                            ProjectContract.name,
                            extra: ProjectParams(
                              name: state.name,
                            ));

                        if (result != null) {
                          controller.updateName(result);
                        }
                      },
                    ),
                    TribeInfoTile(
                      title: context.localisation.previewToken,
                      suffixSubtitle: state.tokenName,
                      onPressed: () async {
                        final result = await context.pushNamed<TokenResult?>(
                            TokenContract.name,
                            extra: TokenParams(
                              name: state.tokenName,
                              token: state.token,
                              amount: state.money,
                              standalone: true,
                            ));

                        if (result != null) {
                          controller.updateTokenName(result);
                        }
                      },
                    ),
                    TribeInfoTile(
                      title: context.localisation.previewDescription,
                      suffixSubtitle: context.localisation.commoEdit,
                      description: SizedBox(
                          height: Spacing.x6,
                          child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                context.colors.labelLight2,
                                BlendMode.srcIn,
                              ),
                              child: Markdown(data: state.description))),
                               onPressed: () async {
                        final result = await context.pushNamed<DescriptionResult?>(
                            DescriptionContract.name,
                            extra: DescriptionParams(
                              description: state.description,
                            ));

                        if (result != null) {
                          controller.updateDescription(result);
                        }
                      },
                    ),
                    const TribeDivider(),
                    TribeInfoTile(
                      title: context.localisation.previewDeadline,
                      suffixTitle: context.localisation
                          .days(state.deadline.difference(now).inDays + 1),
                      suffixSubtitle:
                          DateFormat('MMMM dd').format(state.deadline),
                           onPressed: () async {
                        final result = await context.pushNamed<DeadlineResult?>(
                            DeadlineContract.name,
                            extra: DeadlineParams(
                              deadline: state.deadline,
                            ));

                        if (result != null) {
                          controller.updateDeadline(result);
                        }
                      },
                    ),
                    TribeSpaceVertical.standard(),
                    TribeButton(
                      text: context.localisation.previewLaunchButton,
                      onPressed: () {},
                    ),
                    TribeSpaceVertical.quad(),
                    TribeInfoTile(
                      title: context.localisation.previewManagement,
                      suffixTitle: context.localisation
                          .previewSigners(state.signers.length + 1),
                      suffixSubtitle: context.localisation.previewTreshold(
                        state.managersTreshold,
                        state.managers.length + 1,
                      ),
                      onPressed: () async {
                        final result = await context.pushNamed<ManagementResult?>(
                            ManagementContract.name,
                            extra: ManagementParams(
                              managers: state.managers,
                              managersTreshold: state.managersTreshold,
                            ));

                        if (result != null) {
                          controller.updateManagers(result);
                        }
                      },
                    ),
                  ],
                )
              : const TribeLoading()),
    );
  }
}
