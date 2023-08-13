import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token_type.dart';

part 'token.freezed.dart';

@freezed
class Token with _$Token {
  const factory Token({
    required TokenType name,
    required double ratio,
  }) = _Token;

}