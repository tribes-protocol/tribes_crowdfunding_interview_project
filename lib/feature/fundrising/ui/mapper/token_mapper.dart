import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/token_type.dart';
import 'package:tribes_crowdfunding_interview_project/gen/assets.gen.dart';

final tokenMapperProvider = Provider((ref) => TokenMapper());

class TokenMapper {
  TokenMapper() {
    final assets = {
      for (var element in Assets.images.tokens.values) _pathRegexp.stringMatch(element): element
    };
    for (var type in TokenType.values) {
      _icons[type] = SvgPicture.asset(assets[type.name]!);
    }
  }
  final _pathRegexp = RegExp(r'[\w-]+?(?=\.)');
  final Map<TokenType, SvgPicture> _icons = {};

  SvgPicture mapTokenIcon(TokenType tokenType) => _icons[tokenType]!;
  String mapTokeName(TokenType tokenType) {
    switch (tokenType) {
      case TokenType.act:
        return 'Achain';
      case TokenType.bnb:
        return 'BNB';
      case TokenType.btx:
        return 'BitCore';

      case TokenType.burst:
        return 'Burst';

      case TokenType.cnd:
        return 'Cindicator';

      case TokenType.doge:
        return 'Doge';

      case TokenType.eth:
        return 'Ethereum';

      case TokenType.ethos:
        return 'Ethos Project';

      case TokenType.etn:
        return 'Electroneum';

      case TokenType.etp:
        return 'Metaverse ETP';

      case TokenType.grs:
        return 'Groestlcoin';

      case TokenType.huc:
        return 'Huckleberry';

      case TokenType.hush:
        return 'Hush';

      case TokenType.kcs:
        return 'KuCoin';

      case TokenType.mco:
        return 'MCO';

      case TokenType.neos:
        return 'Neos';

      case TokenType.ngc:
        return 'NAGA';

      case TokenType.rcn:
        return 'Ripio Credit Network';

      case TokenType.rdd:
        return 'ReddCoin';

      case TokenType.trig:
        return 'Trig';

      case TokenType.xbc:
        return 'Bitcoin Plus';

      case TokenType.zrx:
        return '0x Protocol';
    }
  }
}
