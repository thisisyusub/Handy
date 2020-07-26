import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../contractors/impl_auth_repository.dart';
import '../exceptions/http_exception.dart';

class AuthRepository extends IAuthRepository {
  AuthRepository(
    this.firebaseAuth,
    this.googleSignIn,
  ) : assert(firebaseAuth != null && googleSignIn != null);

  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

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
    } on PlatformException catch (e) {
      throw HttpException(e.message);
    } catch (e) {
      throw HttpException(e.toString());
    }
  }

  @override
  Future<FirebaseUser> signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleSignInAccount =
          await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential authCredential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );

      final AuthResult authResult = await firebaseAuth.signInWithCredential(authCredential);
      return authResult.user;
    } on PlatformException catch(e) {
        throw HttpException(e.message);
    }
    catch (e) {
      throw HttpException(e.toString());
    }
  }

  @override
  Future<void> logOut() async {
    await firebaseAuth?.signOut();
    await googleSignIn?.signOut();
  }
}
