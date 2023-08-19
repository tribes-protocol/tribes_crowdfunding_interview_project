import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/data/provider/repository_provider.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token_type.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/mapper/token_mapper.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token_list/provider/token_list_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/user_list/provider/user_list_provider.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_empty.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_error.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_input_search.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_loading.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_tile.dart';

class UserListPage extends ConsumerStatefulWidget {
  const UserListPage({super.key});

  @override
  ConsumerState<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends ConsumerState<UserListPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(userListControllerProvider.notifier).init();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final tokenMapper = ref.watch(tokenMapperProvider);
    final controller = ref.watch(userListControllerProvider.notifier);
    final state = ref.watch(userListControllerProvider);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24),
        child: state.users.map(
          data: (data) {
            final users = state.filteredUsers;

            return Column(
              children: [
                TribeInputSearch(
                  hint: context.localisation.commonSearch,
                  onSearch: (query) {
                    controller.search(query);
                  },
                ),
                if (users.isEmpty)
                  const Expanded(child: TribeEmptyState())
                else
                  Expanded(
                    child: ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        final user = users[index];

                        return TribeTile(
                          icon: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.network(user.avatarUrl)),
                          title: user.name,
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: tokenMapper.mapTokenIcon(user.tokenType),
                                ),
                                TribeSpaceHorizontal.half(),
                                Text('0x1a2b·3c4d', style: context.textStyles.secondary,)
                              ],
                            ),
                          ),
                          suffix: const SizedBox.shrink(),
                          onPressed: () {
                            Navigator.of(context).pop(user);
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
