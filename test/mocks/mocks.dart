import 'package:firebase_auth/firebase_auth.dart';
import 'package:handy/blocs/auth_bloc/auth_bloc.dart';
import 'package:handy/data/repositories/auth_repository.dart';
import 'package:mockito/mockito.dart';

class MockFirebaseUser extends Mock implements FirebaseUser {}

class MockAuthRepository extends Mock implements AuthRepository {}

class MockAuthBloc extends Mock implements AuthBloc {}
