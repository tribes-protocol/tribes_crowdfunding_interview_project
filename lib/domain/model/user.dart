import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token_type.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String name,
    required String avatarUrl,
    required TokenType tokenType,
    required String wallet,
  }) = _User;
}