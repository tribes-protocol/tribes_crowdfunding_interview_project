import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/data/repository/token_repository_impl.dart';
import 'package:tribes_crowdfunding_interview_project/domain/repository/token_repository.dart';

final tokenRepositoryProvider = Provider<TokenRepository>((ref) => TokenRepositoryImpl());
