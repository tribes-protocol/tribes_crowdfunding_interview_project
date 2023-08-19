import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundrising_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/fundrising_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/emoji/emoji_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/emoji/emoji_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/info/info_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/info/info_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/intro/intro_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_page.dart';
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
      path: FundrisingContract.path,
      name: FundrisingContract.name,
      builder: (BuildContext context, GoRouterState state) {
        return const FundrisingPage();
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
  ],
);
