import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token.dart';

part 'token_list_state.freezed.dart';

@freezed
class TokenListState with _$TokenListState {
  const factory TokenListState({
    @Default(AsyncLoading()) AsyncValue<List<Token>> tokens,
    @Default([]) List<Token> filteredTokens,
  }) = _TokenListState;
}
