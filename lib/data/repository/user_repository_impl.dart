import 'package:tribes_crowdfunding_interview_project/domain/model/token_type.dart';
import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';
import 'package:tribes_crowdfunding_interview_project/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final List<User> _users = [];

  @override
  Future<List<User>> getUsers() async {
    if (_users.isEmpty) {
      // Simulate API request
      await Future.delayed(const Duration(milliseconds: 1000));

      _users.addAll([
        const User(
            name: 'Alice',
            avatarUrl: 'https://i.pravatar.cc/40?u=1',
            tokenType: TokenType.eth,
            wallet: '0x1a2b·3c4d'),
        const User(
            name: 'Bob',
            avatarUrl: 'https://i.pravatar.cc/40?u=2',
            tokenType: TokenType.eth,
            wallet: '0x2b3c·4d5e'),
        const User(
            name: 'Charlie',
            avatarUrl: 'https://i.pravatar.cc/40?u=3',
            tokenType: TokenType.eth,
            wallet: '0x3c4d·5e6f'),
        const User(
            name: 'David',
            avatarUrl: 'https://i.pravatar.cc/40?u=4',
            tokenType: TokenType.eth,
            wallet: '0x4d5e·6f7g'),
        const User(
            name: 'Eva',
            avatarUrl: 'https://i.pravatar.cc/40?u=5',
            tokenType: TokenType.eth,
            wallet: '0x5e6f·7g8h'),
        const User(
            name: 'Fiona',
            avatarUrl: 'https://i.pravatar.cc/40?u=6',
            tokenType: TokenType.eth,
            wallet: '0x6f7g·8h9i'),
        const User(
            name: 'George',
            avatarUrl: 'https://i.pravatar.cc/40?u=7',
            tokenType: TokenType.eth,
            wallet: '0x7g8h·9i0j'),
        const User(
            name: 'Hannah',
            avatarUrl: 'https://i.pravatar.cc/40?u=8',
            tokenType: TokenType.eth,
            wallet: '0x8h9i·0j1k'),
        const User(
            name: 'Isaac',
            avatarUrl: 'https://i.pravatar.cc/40?u=9',
            tokenType: TokenType.eth,
            wallet: '0x9i0j·1k2l'),
        const User(
            name: 'Julia',
            avatarUrl: 'https://i.pravatar.cc/40?u=10',
            tokenType: TokenType.eth,
            wallet: '0x0j1k·2l3m'),
      ]);
    }

    return _users;
  }
}
