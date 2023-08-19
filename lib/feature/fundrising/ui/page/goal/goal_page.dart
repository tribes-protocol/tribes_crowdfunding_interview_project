import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/mapper/token_mapper.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/provider/page_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token_list/token_list_contract.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_error.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_input_text.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_loading.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_tile.dart';

class GoalPage extends ConsumerStatefulWidget {
  const GoalPage({super.key});

  @override
  ConsumerState<GoalPage> createState() => _GoalPageState();
}

class _GoalPageState extends ConsumerState<GoalPage> {
  final TextEditingController _moneyController =
      TextEditingController(text: '0');
  final TextEditingController _cryptoController =
      TextEditingController(text: '0');

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(goalControllerProvider.notifier).init();
    });

    ref.listenManual(goalControllerProvider, (previous, next) {
      if (next.moneyEditing) {
        _cryptoController.text =
            next.crypto != 0 ? next.crypto.toStringAsFixed(2) : '0';
      } else {
        _moneyController.text =
            next.money != 0 ? next.money.toStringAsFixed(2) : '0';
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _moneyController.dispose();
    _cryptoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tokenMapper = ref.watch(tokenMapperProvider);
    final controller = ref.watch(goalControllerProvider.notifier);
    final state = ref.watch(goalControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: state.token.map(
          data: (data) {
            final token = data.value;
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                      context.localisation.fundingTitle,
                      style: context.textStyles.header4,
                    ),
                    TribeSpaceVertical.double(),
                    Text(
                      context.localisation.fundingSubtitle,
                      style: context.textStyles.body,
                    ),
                    TribeSpaceVertical.double(),
                    Focus(
                      onFocusChange: (value) {
                        controller.onMoneySelected(value);
                      },
                      child: TribeInputText(
                        controller: _moneyController,
                        suffix: 'USD',
                        onValueChange: (value) {
                          controller.onMoneyChange(double.tryParse(value));
                        },
                      ),
                    ),
                    TribeSpaceVertical.half(),
                    Focus(
                      onFocusChange: (value) {
                        controller.onMoneySelected(!value);
                      },
                      child: TribeInputText(
                        controller: _cryptoController,
                        suffix: token.type.name.toUpperCase(),
                        onValueChange: (value) {
                          controller.onCryptoChange(double.tryParse(value));
                        },
                      ),
                    ),
                    TribeTile(
                      icon: tokenMapper.mapTokenIcon(token.type),
                      title: context.localisation.fundingIn,
                      subtitle: Text(
                        tokenMapper.mapTokeName(token.type),
                        style: context.textStyles.body.copyWith(
                            fontWeight: FontWeight.w700,
                            color: context.colors.labelLight1),
                      ),
                      onPressed: () async {
                        final token = await context
                            .pushNamed<Token?>(TokenListContract.name);
                        if (token == null) {
                          return;
                        }

                        controller.onTokenChanged(token);
                      },
                    )
                  ],
                ),
              ),
            );
          },
          error: (_) => const TribeError(),
          loading: (_) => const TribeLoading(),
        ),
      ),
    );
  }
}
