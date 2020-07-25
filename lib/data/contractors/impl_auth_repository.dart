import 'package:firebase_auth/firebase_auth.dart';
import './impl_base_repository.dart';

abstract class IAuthRepository extends IBaseRepository {
  Future<FirebaseUser> register(String email, String password);

  Future<FirebaseUser> login(String email, String password);

  Future<void> signInWithGoogle();

  Future<void> logOut();
}
