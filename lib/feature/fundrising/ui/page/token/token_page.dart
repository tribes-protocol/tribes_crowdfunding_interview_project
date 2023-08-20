import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/provider/token_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_contract.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_app_bar.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_input_text.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TokentPage extends ConsumerStatefulWidget {
  const TokentPage({
    super.key,
    required this.params,
  });

  final TokenParams params;

  @override
  ConsumerState<TokentPage> createState() => _TokenPageState();
}

class _TokenPageState extends ConsumerState<TokentPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref
          .read(tokenControllerProvider.notifier)
          .init(widget.params)
          .then((value) {
        if (widget.params.name != null) {
          _controller.text = widget.params.name!.split(' ').first;
        }
      }));
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
    final controller = ref.watch(tokenControllerProvider.notifier);
    final state = ref.watch(tokenControllerProvider);
    final params = widget.params;
    Future<bool> onBack() async {
      context.pop(TokenResult(
        name: state.tokenName,
      ));
      return true;
    }

    return WillPopScope(
        onWillPop: onBack,
        child: Scaffold(
          appBar: widget.params.name != null
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
                      context.localisation.tokenTitle,
                      style: context.textStyles.header4,
                    ),
                    TribeSpaceVertical.double(),
                    Text(
                      context.localisation.tokenSubtitle,
                      style: context.textStyles.body,
                    ),
                    TribeSpaceVertical.double(),
                    TribeInputText(
                      controller: _controller,
                      intial: state.tokenName,
                      error: state.error,
                      hint: context.localisation.commoName,
                      textCapitalization: TextCapitalization.characters,
                      keyboardType: TextInputType.text,
                      textInputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                      ],
                      onValueChange: (value) {
                        controller.onNameChanged(value);
                      },
                    ),
                    TribeSpaceVertical.double(),
                    Text(
                      context.localisation.tokenRate(
                        (params.amount * params.token.ratio).toStringAsFixed(2),
                        params.token.type.name.toUpperCase(),
                        double.parse(params.amount.toStringAsFixed(2)),
                        state.tokenName,
                      ),
                      style: context.textStyles.secondary,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
