import 'package:firebase_auth/firebase_auth.dart';
import 'package:good_meal/core/models/user_model.dart';
import 'package:good_meal/core/services/abstract_services/auth_base_service.dart';

class Auth implements AuthBase {
  User _userFromFirebase(FirebaseUser user) {
    if (user == null) {
      return null;
    }
    return User(userID: user.uid);
  }

  @override
  Stream<User> get onAuthStateChanged {
    return FirebaseAuth.instance.onAuthStateChanged.map(_userFromFirebase);
  }

  @override
  Future<String> signIn(String email, String password) async {
    final user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: password)) as FirebaseUser;
    return user.uid;
  }

  @override
  Future<String> signUp(String email, String password) async {
    final user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email, password: password)) as FirebaseUser;
    return user.uid;
  }

  @override
  Future<void> signOut() async {
    return FirebaseAuth.instance.signOut();
  }

  @override
  Future<FirebaseUser> getCurrentFirebaseUser() async {
    final user = await FirebaseAuth.instance.currentUser();
    return user;
  }

  @override
  Future<FirebaseUser> signInAnonymously() async {
    final result = await FirebaseAuth.instance.signInAnonymously();
    return result.user;
  }
}
