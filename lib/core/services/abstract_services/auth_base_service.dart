import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthSerivceBase {
  Future<String> signIn(String email, String password);
  Future<String> signUp(String email, String password);
  Future<void> signOut();
  Future<FirebaseUser> getCurrentFirebaseUser();
  Future<FirebaseUser> signInAnonymously();
}
