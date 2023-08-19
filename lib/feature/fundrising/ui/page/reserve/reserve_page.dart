import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/reserve/provider/reserve_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/reserve/reserve_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/reserve/reserve_state.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/user_list/user_list_contract.dart';
import 'package:tribes_crowdfunding_interview_project/theme/tribe_theme.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_button.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_input_button.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_percentage_tile.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_space.dart';

class ReservePage extends ConsumerStatefulWidget {
  const ReservePage({super.key});

  @override
  ConsumerState<ReservePage> createState() => _ReservePageState();
}

class _ReservePageState extends ConsumerState<ReservePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref.read(reserveControllerProvider.notifier).init());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(reserveControllerProvider.notifier);
    final state = ref.watch(reserveControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  context.localisation.reserveTitle,
                  style: context.textStyles.header4,
                ),
                TribeSpaceVertical.double(),
                Text(
                  context.localisation.reserveSubtitle,
                  style: context.textStyles.body,
                ),
                TribeSpaceVertical.double(),
                Text(
                  context.localisation.reserveDescription,
                  style: context.textStyles.secondary,
                ),
                TribeSpaceVertical.triple(),
                TribeInputButton(
                  hint: context.localisation.reserveButton,
                  onPressed: () async {
                    final user =
                        await context.pushNamed<User?>(UserListContract.name);
                    if (user != null) {
                      controller.addUser(user);
                    }
                  },
                ),
                TribeSpaceVertical.standard(),
                _UserList(
                  users: state.users.toList(),
                  portion: state.portion,
                  onRemoveUser: (user) {
                    controller.removeUser(user);
                  },
                ),
                TribePercentageTile(
                  title: context.localisation.reserveIssuedAmountDescription,
                  splitted: false,
                  amount:
                      double.parse((100 - state.procentage).toStringAsFixed(1)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _UserList extends ConsumerWidget {
  const _UserList({
    super.key,
    required this.users,
    required this.portion,
    required this.onRemoveUser,
  });

  final double portion;
  final List<User> users;
  final ValueSetter<User> onRemoveUser;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => TribeSpaceVertical.standard(),
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];

        return TribePercentageTile(
          icon: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.network(user.avatarUrl),
          ),
          title: user.name,
          amount: double.parse(portion.toStringAsFixed(1)),
          splitted: true,
          onClose: () {
            onRemoveUser(user);
          },
        );
      },
    );
  }
}
