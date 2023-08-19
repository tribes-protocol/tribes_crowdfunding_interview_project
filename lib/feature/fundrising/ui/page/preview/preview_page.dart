import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/provider/preview_provider.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_button.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_divider.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_info_tile.dart';
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
      unawaited(ref.read(previewControllerProvider.notifier).init(widget.params));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(previewControllerProvider).mapOrNull((value) => value);
    if(state == null) {
      return const SizedBox();
    }

    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.all(16),
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
          ),
          TribeInfoTile(
            title: context.localisation.previewGoal,
            suffixTitle: '\$${state.money}',
            suffixSubtitle:
                '${(state.money * state.token.ratio).toStringAsFixed(1)} ${state.token.type.name.toUpperCase()}',
          ),
          TribeInfoTile(
            title: context.localisation.previewName,
            suffixTitle: '\$${state.name}',
          ),
          TribeInfoTile(
            title: context.localisation.previewToken,
            suffixSubtitle: state.tokenName,
          ),
          TribeInfoTile(
            title: context.localisation.previewDescription,
            suffixSubtitle: context.localisation.commoEdit,
            description: SizedBox(
                height: 48,
                child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      context.colors.labelLight2,
                      BlendMode.srcIn,
                    ),
                    child: MarkdownBody(data: state.description))),
          ),
          const TribeDivider(),
          TribeButton(
            text: context.localisation.previewLaunchButton,
            onPressed: () {},
          ),
          TribeSpaceVertical.x8(),
          TribeInfoTile(
            title: context.localisation.previewManagement,
            suffixTitle: context.localisation.previewSigners(state.signers.length),
            suffixSubtitle: context.localisation.previewTreshold(state.managersTreshold, state.managers.length),
          ),
        ],
      )),
    );
  }
}
