import 'dart:ui';

// ignore: implementation_imports
import 'package:emoji_picker_flutter/src/emoji.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/emoji/emoji_state.dart';

class EmojiController extends StateNotifier<EmojiState> {
  EmojiController() : super(const EmojiState());

  void init(String? emoji, Color? color) {
    if (emoji != null && color != null) {
      state = state.copyWith(emoji: emoji, color: color);
    }
  }

  void onEmojiSelected(Emoji emoji) {
    state = state.copyWith(emoji: emoji.emoji);
  }

  void onColorSelected(Color color) {
    state = state.copyWith(color: color);
  }
}
