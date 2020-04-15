import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class AuthService {
  var _userController = StreamController<FirebaseUser>();

  Stream<FirebaseUser> get user => _userController.stream;

  Future<String> signIn(String email, String password) async {
    final user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: password)) as FirebaseUser;

    if (user != null) {
      _userController.add(user);
    }

    return user.uid;
  }

  Future<dynamic> signUp(String email, String password) async {
    try {
      final user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password).then((e){
print("Got=>>>>>>>>:$e");
          });
      print("Got=>>>>>>>>:$user");
      return user;
    } catch (e) {
      print("Error=>>>>>>>>:$e");
      return null;
    }
  }

  Future<void> signOut() async {
    return FirebaseAuth.instance.signOut();
  }

  Future<FirebaseUser> getCurrentFirebaseUser() async {
    final user = await FirebaseAuth.instance.currentUser();
    return user;
  }

  Future<FirebaseUser> signInAnonymously() async {
    final result = await FirebaseAuth.instance.signInAnonymously();
    return result.user;
  }
}
