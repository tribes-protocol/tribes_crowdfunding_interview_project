import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/core/localisation/localisation_extension.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/goal/goal_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/preview_router.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/preview/provider/preview_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_contract.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/token/token_controller.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_button.dart';

class PreviewPage extends ConsumerStatefulWidget {
  const PreviewPage({super.key});

  @override
  ConsumerState<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends ConsumerState<PreviewPage> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  final _steps = [];

@override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) { 
      unawaited(ref.read(previewControllerProvider.notifier).init());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Navigator(
                key: _navigatorKey,
                initialRoute: TokenContract.name,
                onGenerateRoute: PreviewRouter.onGenerateRoute,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TribeButton(text: context.localisation.commoContinue,),
            )
          ],
        ),
      ),
    );
  }
}