import 'package:flutter_svg/flutter_svg.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token_type.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';

class TokenMapper {
  TokenMapper() {
    final assets = {
      for (var element in Assets.images.tokens.values)
        _pathRegexp.stringMatch(element): element
    };
    for (var type in TokenType.values) {
      _icons[type] = SvgPicture.asset(assets[type.name]!);
    }
  }    
  final _pathRegexp = RegExp(r'[\w-]+?(?=\.)');
  final Map<TokenType, SvgPicture> _icons = {};

  SvgPicture mapTokenIcon(TokenType tokenType) => _icons[tokenType]!;
}
