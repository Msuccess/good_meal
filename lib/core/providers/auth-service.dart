


import 'package:firebase_auth/firebase_auth.dart';

enum authProblems { UserNotFound, PasswordNotValid, NetworkError, UnknownError }

class Auth {
  static Future<String> signIn(String email, String password) async {
    FirebaseUser user = (await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)) as FirebaseUser;
    return user.uid;
  }


  static Future<String> signUp(String email, String password) async {
    FirebaseUser user = (await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)) as FirebaseUser;
    return user.uid;
  }

  static Future<void> signOut() async {
    return FirebaseAuth.instance.signOut();
  }

  static Future<FirebaseUser> getCurrentFirebaseUser() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    return user;
  }

}
