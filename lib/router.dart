import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/deadline_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/deadline/deadline_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/goal_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/goal_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/intro/intro_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/project/project_page.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token_list/token_list_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token_list/token_list_page.dart';

final router = GoRouter(
  initialLocation: DeadlineContract.path,
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
  ],
);
