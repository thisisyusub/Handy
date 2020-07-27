import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../contractors/impl_auth_repository.dart';
import './firebase_client.dart';

class AuthRepository extends IAuthRepository {
  AuthRepository({
    this.firebaseAuth,
    this.googleSignIn,
  }) : assert(firebaseAuth != null && googleSignIn != null);

  final FirebaseAuth firebaseAuth;
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
      final GoogleSignInAccount googleSignInAccount =
          await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential authCredential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );

      final AuthResult authResult =
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
