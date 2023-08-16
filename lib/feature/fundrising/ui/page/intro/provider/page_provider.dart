import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/data/provider/repository_provider.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/intro/intro_controller.dart';

final introControllerProvider = StateNotifierProvider.autoDispose<IntroController, void>((ref) {
  final tokenListRepository = ref.watch(tokenRepositoryProvider);

  return IntroController(
    tokenRepository: tokenListRepository,
  );
});
