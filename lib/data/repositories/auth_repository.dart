import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

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
  Future<User> login(String email, String password) async {
    final authResult = await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return authResult.user;
  }

  @override
  Future<User> register(String email, String password) async {
    final authResult = await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    return authResult.user;
  }

  @override
  Future<User> signInWithGoogle() async {
    final googleSignInAccount = await googleSignIn.signIn();
    final googleSignInAuthentication = await googleSignInAccount.authentication;

    final authCredential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );

    final authResult = await firebaseAuth.signInWithCredential(authCredential);
    return authResult.user;
  }

  @override
  User loggedUser() => firebaseAuth.currentUser;

  @override
  Future<void> logOut() => Future.wait([
        firebaseAuth?.signOut(),
        googleSignIn?.signOut(),
      ]);
}
