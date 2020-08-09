import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

import '../contractors/impl_auth_repository.dart';
import './firebase_client.dart';

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
    final user = await makeAndCheckRequest<FirebaseUser>(
      () async {
        final authResult = await firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );

        return authResult.user;
      },
      exceptionType: ExceptionType.loginInWithEmailAndPassword,
    );

    return user;
  }

  @override
  Future<FirebaseUser> register(String email, String password) async {
    final user = await makeAndCheckRequest<FirebaseUser>(
      () async {
        final authResult = await firebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        return authResult.user;
      },
      exceptionType: ExceptionType.signUpWithEmailAndPassword,
    );

    return user;
  }

  @override
  Future<FirebaseUser> signInWithGoogle() async {
    final user = await makeAndCheckRequest<FirebaseUser>(
      () async {
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
      },
      exceptionType: ExceptionType.googleSignIn,
    );

    return user;
  }

  @override
  Future<FirebaseUser> loggedUser() async {
    final loggedUser = await makeAndCheckRequest<FirebaseUser>(
      () async {
        final user = await firebaseAuth.currentUser();
        return user;
      },
      exceptionType: ExceptionType.loggedUser,
    );

    return loggedUser;
  }

  @override
  Future<void> logOut() => makeAndCheckRequest<void>(
        () async {
          await firebaseAuth?.signOut();
          await googleSignIn?.signOut();
        },
        exceptionType: ExceptionType.logOut,
      );
}
