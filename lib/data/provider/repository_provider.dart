import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/data/repository/token_repository_impl.dart';
import 'package:tribes_crowdfunding_interview_project/data/repository/user_repository_impl.dart';
import 'package:tribes_crowdfunding_interview_project/domain/repository/token_repository.dart';
import 'package:tribes_crowdfunding_interview_project/domain/repository/user_repository.dart';

final tokenRepositoryProvider = Provider<TokenRepository>((ref) => TokenRepositoryImpl());
final userRepositoryProvider = Provider<UserRepository>((ref) => UserRepositoryImpl());
