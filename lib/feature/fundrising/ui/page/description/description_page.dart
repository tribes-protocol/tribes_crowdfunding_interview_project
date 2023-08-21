import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/description/description_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/description/provider/description_provider.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_app_bar.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_markdown_text.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_multiline_text_field.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_tab_switcher.dart';

class DescriptionPage extends ConsumerStatefulWidget {
  const DescriptionPage({
    super.key,
    this.params,
  });

  final DescriptionParams? params;

  @override
  ConsumerState<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends ConsumerState<DescriptionPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final controller = ref.read(descriptionControllerProvider.notifier);
      final state = ref.read(descriptionControllerProvider);
      unawaited(controller.init(widget.params));
      final description = widget.params?.description ?? state.description;

      _controller.text = description;
      controller.setDescription(description);
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
    final controller = ref.watch(descriptionControllerProvider.notifier);
    final state = ref.watch(descriptionControllerProvider);

    Future<bool> onBack() async {
      context.pop(DescriptionResult(
        description: state.description,
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.double),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.localisation.descriptionTitle,
                      style: context.textStyles.header4,
                    ),
                    TribeSpaceVertical.double(),
                    Text(
                      context.localisation.descriptionSubtitle,
                      style: context.textStyles.body,
                    ),
                    TribeSpaceVertical.triple(),
                    SizedBox(
                      height: 185,
                      child: TribeTabSwircher(tabs: [
                        TribeSwitcherTab(
                          label: Text(
                            context.localisation.descriptionWrite,
                            style: context.textStyles.body
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          child: TribeMultiLineTextField(
                            controller: _controller,
                            hint: context.localisation.descriptionWriteHint,
                            onTextChanged: (value) {
                              setState(() {
                                controller.setDescription(value);
                              });
                            },
                          ),
                        ),
                        TribeSwitcherTab(
                          label: Text(
                            context.localisation.descriptionPreview,
                            style: context.textStyles.body
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          child: TribeMarkdownText(
                            data: _controller.text,
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
