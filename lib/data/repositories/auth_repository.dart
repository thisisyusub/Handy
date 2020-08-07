import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

import './firebase_client.dart';
import '../contractors/impl_auth_repository.dart';

/// Class to store and and make [Authentication] process and data
class AuthRepository extends IAuthRepository {
  /// Provides instance of [AuthRepository]
  AuthRepository({
    @required this.firebaseAuth,
    @required this.googleSignIn,
  });

  /// field used to make [Firebase Authentication] with [email] and [password]
  final FirebaseAuth firebaseAuth;

  /// field used to make [Google Sign in] process
  final GoogleSignIn googleSignIn;

  @override
  Future<FirebaseUser> login(String email, String password) async {
    final user = await makeAndCheckRequest<FirebaseUser>(() async {
      final authResult = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return authResult.user;
    });

    return user;
  }

  @override
  Future<FirebaseUser> register(String email, String password) async {
    final user = await makeAndCheckRequest<FirebaseUser>(() async {
      final authResult = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return authResult.user;
    });

    return user;
  }

  @override
  Future<FirebaseUser> signInWithGoogle() async {
    final user = await makeAndCheckRequest<FirebaseUser>(() async {
      final googleSignInAccount = await googleSignIn.signIn();
      final googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final authCredential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );

      final authResult =
          await firebaseAuth.signInWithCredential(authCredential);
      return authResult.user;
    });

    return user;
  }

  @override
  Future<bool> isUserLogged() async {
    final isLogged = await makeAndCheckRequest<bool>(() async {
      final user = await firebaseAuth.currentUser();
      final isGoogleSignedIn = await googleSignIn.isSignedIn();
      return user != null && isGoogleSignedIn;
    });

    return isLogged;
  }

  @override
  Future<void> logOut() async {
    await firebaseAuth?.signOut();
    await googleSignIn?.signOut();
  }
}
