import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/management/provider/management_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/user_list/user_list_contract.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_divider.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_input_button.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_majority_splitter.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_percentage_tile.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class ManagementPage extends ConsumerStatefulWidget {
  const ManagementPage({super.key});

  @override
  ConsumerState<ManagementPage> createState() => _ManagementPageState();
}

class _ManagementPageState extends ConsumerState<ManagementPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref.read(managementControllerProvider.notifier).init());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(managementControllerProvider.notifier);
    final state = ref.watch(managementControllerProvider);
    final users = state.users.toList();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  context.localisation.managementTitle,
                  style: context.textStyles.header4,
                ),
                TribeSpaceVertical.double(),
                Text(
                  context.localisation.managementSubtitle,
                  style: context.textStyles.body,
                ),
                const TribeDivider(),
                Text(
                  context.localisation.managementSigners,
                  style: context.textStyles.body
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                TribeSpaceVertical.double(),
                Text(
                  context.localisation.managementSignersDescription,
                  style: context.textStyles.body,
                ),
                TribeSpaceVertical.double(),
                TribeInputButton(
                    hint: context.localisation.managementSignersWaletHint,
                    onPressed: () async {
                      final user =
                          await context.pushNamed<User?>(UserListContract.name);
                      if (user != null) {
                        controller.addUser(user);
                      }
                    }),
                TribeSpaceVertical.standard(),
                ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) =>
                      TribeSpaceVertical.standard(),
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];

                    return TribePercentageTile(
                      icon: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.network(user.avatarUrl),
                      ),
                      title: user.name,
                      onClose: () {
                        controller.removeUser(user);
                      },
                    );
                  },
                ),
                const TribeDivider(),
                Text(
                  context.localisation.managementSignatureTreshold,
                  style: context.textStyles.body
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                TribeSpaceVertical.double(),
                Text(
                  context.localisation.managementSignatureTresholdDescription,
                  style: context.textStyles.body,
                ),
                TribeSpaceVertical.double(),
                TribeMajoritySplitter(
                  total: users.length + 1,
                  onIncrease: (value) {},
                  onDecrease: (value) {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
