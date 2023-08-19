
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';
import 'package:tribes_crowdfunding_interview_project/uikit/tribe_visual.dart';

part 'preview_state.freezed.dart';

@freezed
class PreviewState with _$PreviewState {
  const factory PreviewState.empty() = _PreviewStateEmpty;

  const factory PreviewState({
    required TribeVisualType type,
    required Color background,
    required double money,
    required Token token,
    required String name,
    required String tokenName,
    required String description,
    required DateTime deadline,
    required Set<User> signers,
    required Set<User> managers,
    required int managersTreshold,
  }) =_PreviewState;
}

extension PreviewStateX on PreviewState {
  // ignore: library_private_types_in_public_api
  _PreviewState get required => mapOrNull((value) => value)!;
}