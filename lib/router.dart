import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundraising_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundraising_page.dart';
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
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/management/management_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/management/management_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token_list/token_list_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token_list/token_list_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/user_list/user_list_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/user_list/user_list_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/visual_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/visual_page.dart';


final router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const IntroPage();
      },
    ),
    GoRoute(
      path: FundraisingContract.path,
      name: FundraisingContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return const FundraisingPage();
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
     GoRoute(
      path: PreviewContract.path,
      name: PreviewContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return PreviewPage(params: state.extra as PreviewParams,);
      },
    ),
    GoRoute(
      path: VisualContract.path,
      name: VisualContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return VisualPage(params: state.extra as VisualParams?,);
      },
    ),
    GoRoute(
      path: GoalContract.path,
      name: GoalContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return GoalPage(params: state.extra as GoalParams?,);
      },
    ),
    GoRoute(
      path: ProjectContract.path,
      name: ProjectContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return ProjectPage(params: state.extra as ProjectParams?,);
      },
    ),
    GoRoute(
      path: TokenContract.path,
      name: TokenContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return TokentPage(params: state.extra as TokenParams,);
      },
    ),
    GoRoute(
      path: DescriptionContract.path,
      name: DescriptionContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return DescriptionPage(params: state.extra as DescriptionParams?,);
      },
    ),
    GoRoute(
      path: DeadlineContract.path,
      name: DeadlineContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return DeadlinePage(params: state.extra as DeadlineParams?,);
      },
    ),
    GoRoute(
      path: ManagementContract.path,
      name: ManagementContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return ManagementPage(params: state.extra as ManagementParams?,);
      },
    ),
  ],
);
