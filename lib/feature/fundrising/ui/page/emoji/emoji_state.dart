import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji_state.freezed.dart';

@freezed
class EmojiState with _$EmojiState {
  const factory EmojiState({
    @Default('') String emoji,
    @Default(Color(0xFFF60909)) Color color,
  }) = _EmojiState;
}
