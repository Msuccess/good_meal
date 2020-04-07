import 'package:firebase_auth/firebase_auth.dart';
class AuthSerivce {

   Future<String> signIn(String email, String password) async {
    FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: password)) as FirebaseUser;
    return user.uid;
  }

   Future<String> signUp(String email, String password) async {
    FirebaseUser user = (await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password))
        as FirebaseUser;
    return user.uid;
  }

   Future<void> signOut() async {
    return FirebaseAuth.instance.signOut();
  }

   Future<FirebaseUser> getCurrentFirebaseUser() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    return user;
  }
}
