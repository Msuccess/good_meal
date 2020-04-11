import 'package:firebase_auth/firebase_auth.dart';
import 'package:good_meal/core/models/user.dart';

abstract class AuthBase {
  Future<String> signIn(String email, String password);
  Future<String> signUp(String email, String password);
  Future<void> signOut();
  Future<FirebaseUser> getCurrentFirebaseUser();
  Future<FirebaseUser> signInAnonymously();
   Stream<User> get onAuthStateChanged;
}
