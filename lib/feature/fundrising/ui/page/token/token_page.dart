import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/provider/project_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/provider/token_provider.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_input_text.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class TokentPage extends ConsumerStatefulWidget {
  const TokentPage({
    super.key,
    required this.token,
    required this.amount,
  });

  final String token;
  final double amount;

  @override
  ConsumerState<TokentPage> createState() => _TokenPageState();
}

class _TokenPageState extends ConsumerState<TokentPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref.read(projectControllerProvider.notifier).init());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(tokenControllerProvider.notifier);
    final state = ref.watch(tokenControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                  error: state.error,
                  textCapitalization: TextCapitalization.characters,
                  keyboardType: TextInputType.text,
                  textInputFormatters:[
                    FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                  ],
                  onValueChange: (value) {
                    controller.onNameChanged(value);
                  },
                ),
                TribeSpaceVertical.double(),
                Text(
                  context.localisation.tokenRate(
                    widget.token,
                    widget.amount,
                    state.tokenName,
                  ),
                  style: context.textStyles.secondary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
