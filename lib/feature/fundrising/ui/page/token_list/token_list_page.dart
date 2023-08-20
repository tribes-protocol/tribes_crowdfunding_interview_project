import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/mapper/token_mapper.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token_list/provider/token_list_provider.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_empty.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_error.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_input_search.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_loading.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_tile.dart';

class TokenListPage extends ConsumerStatefulWidget {
  const TokenListPage({super.key});

  @override
  ConsumerState<TokenListPage> createState() => _TokenListPageState();
}

class _TokenListPageState extends ConsumerState<TokenListPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(tokenListControllerProvider.notifier).init();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mapper = ref.watch(tokenMapperProvider);
    final controller = ref.watch(tokenListControllerProvider.notifier);
    final state = ref.watch(tokenListControllerProvider);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(Spacing.triple),
        child: state.tokens.map(
          data: (data) {
            final tokens = state.filteredTokens;

            return Column(
              children: [
                TribeInputSearch(
                  hint: context.localisation.commonSearch,
                  onSearch: (query) {
                    controller.search(query);
                  },
                ),
                if (tokens.isEmpty)
                  const Expanded(child: TribeEmptyState())
                else
                  Expanded(
                    child: ListView.builder(
                      itemCount: tokens.length,
                      itemBuilder: (context, index) {
                        final token = tokens[index];

                        return TribeTile(
                          key: ValueKey(token.type.name),
                          icon: mapper.mapTokenIcon(token.type),
                          title: mapper.mapTokeName(token.type),
                          suffix: const SizedBox.shrink(),
                          onPressed: () {
                            Navigator.of(context).pop(token);
                          },
                        );
                      },
                    ),
                  ),
              ],
            );
          },
          error: (e) => const TribeError(),
          loading: (_) => const TribeLoading(),
        ),
      )),
    );
  }
}
