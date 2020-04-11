import 'package:firebase_auth/firebase_auth.dart';
import 'package:good_meal/core/services/abstract_services/auth_base_service.dart';

class AuthService implements AuthSerivceBase{

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
