import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/emoji/emoji_controller.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/emoji/emoji_state.dart';

final emojiControllerProvider =
    StateNotifierProvider.autoDispose<EmojiController, EmojiState>((ref) {
  return EmojiController();
});
