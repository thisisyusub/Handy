import 'package:firebase_auth/firebase_auth.dart';
import './impl_base_repository.dart';

/// Base Auth Repository to register auth methods
/// it should be implemented by [AuthRepository] classes
abstract class IAuthRepository extends IBaseRepository {
  /// tried to register user according to given [email] and [password]
  Future<User> register(String email, String password);

  /// tried to sign in user according to given [email] and [password]
  Future<User> login(String email, String password);

  /// tried to sign in user according with [Google]
  Future<void> signInWithGoogle();

  /// returns the current user that logged
  /// returns [null] is not logged
  User loggedUser();

  /// log out current user
  Future<void> logOut();
}
