import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/deadline_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/deadline_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/description/description_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/description/description_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/emoji/emoji_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/emoji/emoji_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/goal_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/goal_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/info/info_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/info/info_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/intro/intro_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/reserve/reserve_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/reserve/reserve_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/rules/rules_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token_list/token_list_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token_list/token_list_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/user_list/user_list_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/user_list/user_list_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/visual_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/visual_page.dart';

import 'feature/fundrising/ui/page/rules/rules_contract.dart';

final router = GoRouter(
  initialLocation: InfoContract.path,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const IntroPage();
      },
    ),
    GoRoute(
      path: GoalContract.path,
      name: GoalContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return const GoalPage();
      },
    ),
    GoRoute(
      path: TokenListContract.path,
      name: TokenListContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return const TokenListPage();
      },
    ),
    GoRoute(
      path: ProjectContract.path,
      name: ProjectContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return const ProjectPage();
      },
    ),
    GoRoute(
      path: DeadlineContract.path,
      name: DeadlineContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return const DeadlinePage();
      },
    ),
    GoRoute(
      path: RulesContract.path,
      name: RulesContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return const RulesPage();
      },
    ),
    GoRoute(
      path: DescriptionContract.path,
      name: DescriptionContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return const DescriptionPage();
      },
    ),
    GoRoute(
      path: VisualContract.path,
      name: VisualContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return const VisualPage();
      },
    ),
    GoRoute(
      path: EmojiContract.path,
      name: EmojiContract.name,
      builder: (BuildContext context, GoRouterState state) {
        final params = state.extra as EmojiParams?;
        return EmojiPage(
          emoji: params?.emoji,
          color: params?.color,
        );
      },
    ),
    GoRoute(
      path: ReserveContract.path,
      name: ReserveContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return const ReservePage();
      },
    ),
    GoRoute(
      path: UserListContract.path,
      name: UserListContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return const UserListPage();
      },
    ),
    GoRoute(
      path: InfoContract.path,
      name: InfoContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return const InfoPage();
      },
    ),
  ],
);
