import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_visual.dart';

part 'visual_state.freezed.dart';

@freezed
class VisualState with _$VisualState {
  const factory VisualState({
    @Default(TribeVisualType.emoji(emoji: '😀')) TribeVisualType visualType,
    @Default(Color(0xFFF60909)) Color color,
  }) = _VisualState;
}
