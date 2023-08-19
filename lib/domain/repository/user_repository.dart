import 'package:tribes_crowdfunding_interview_project/domain/model/user.dart';

/// Token related repository
abstract class UserRepository {
  /// Get all available users
  Future<List<User>> getUsers();
}