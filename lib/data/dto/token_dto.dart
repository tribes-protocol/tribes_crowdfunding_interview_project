import 'package:tribes_crowdfunding_interview_project/data/dto/token_type_dto.dart';

class TokenDto {
  const TokenDto({
    required this.name,
    required this.ratio,
  });

  final TokenTypeDto name;
  final double ratio;
}
