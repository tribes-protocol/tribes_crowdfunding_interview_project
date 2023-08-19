import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/visual/visual_state.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_visual.dart';

class VisualController extends StateNotifier<VisualState> {
  VisualController() : super(const VisualState());

  void init() {}

  void setImage(String path) {
    state = state.copyWith(visualType: TribeVisualType.image(path: path));
  }

  void setEmoji(String emoji, Color color) {
    state = state.copyWith(
      visualType: TribeVisualType.emoji(emoji: emoji),
      color: color,
    );
  }
}
