import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import '../contractors/impl_auth_repository.dart';
import '../exceptions/http_exception.dart';

class AuthRepository extends IAuthRepository {
  AuthRepository(this.firebaseAuth) : assert(firebaseAuth != null);

  final FirebaseAuth firebaseAuth;

  @override
  Future<FirebaseUser> login(String email, String password) async {
    try {
      final authResult = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return authResult.user;
    } on PlatformException catch (e) {
      throw HttpException(e.message);
    } catch (e) {
      throw HttpException(e.toString());
    }
  }

  @override
  Future<FirebaseUser> register(String email, String password) async {
    try {
      final authResult = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return authResult.user;
    } on PlatformException catch(e) {
      throw HttpException(e.message);
    }
    catch (e) {
      throw HttpException(e.toString());
    }
  }

  @override
  Future<void> signInWithGoogle() {
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() async => firebaseAuth.signOut();
}
