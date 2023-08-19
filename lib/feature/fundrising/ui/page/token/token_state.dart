import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_state.freezed.dart';

@freezed
class TokenState with _$TokenState {
  const factory TokenState({
    String? error,
    @Default('') String tokenName,
  }) = _TokenState;
}
