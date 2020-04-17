import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

import 'package:flutter/services.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> signIn(String email, String password) async {
    try {
      AuthResult result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return user.uid;
    } catch (e) {
      throw PlatformException(message: e.message, code: e.code);
    }
  }

  Future<FirebaseUser> getCurrentUser() async {
    try {
      FirebaseUser user = await _firebaseAuth.currentUser();
      return user;
    } catch (e) {
      throw PlatformException(message: e.message, code: e.code);
    }
  }

  Future<String> signUp(String email, String password) async {
    try {
      AuthResult result = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      FirebaseUser user = result?.user;
      return user?.uid;
    } catch (e) {
      throw PlatformException(message: e.message, code: e.code);
    }
  }

  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }

  Future<FirebaseUser> getCurrentFirebaseUser() async {
    try {
      final user = await FirebaseAuth.instance.currentUser();
      return user;
    } catch (e) {
      throw PlatformException(message: e.message, code: e.code);
    }
  }

  Future<FirebaseUser> signInAnonymously() async {
    try {
      final result = await FirebaseAuth.instance.signInAnonymously();
      return result.user;
    } catch (e) {
      throw PlatformException(message: e.message, code: e.code);
    }
  }

  Future<void> sendEmailVerification() async {
    try {
      FirebaseUser user = await _firebaseAuth.currentUser();
      user.sendEmailVerification();
    } catch (e) {
      throw PlatformException(message: e.message, code: e.code);
    }
  }

  Future<bool> isEmailVerified() async {
    try {
      FirebaseUser user = await _firebaseAuth.currentUser();
      return user.isEmailVerified;
    } catch (e) {
      throw PlatformException(message: e.message, code: e.code);
    }
  }
}
