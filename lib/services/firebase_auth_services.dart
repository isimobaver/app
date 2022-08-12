import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthServices {
  static final User? _user = FirebaseAuth.instance.currentUser;
  static String? userId = _user!.uid;
  static String? userEmail = _user!.email;
  static String? userPhoto = _user!.photoURL;
  static String? userName = _user!.displayName;
  static bool? userIsVerified = _user!.emailVerified;

  static Future<void> updateUserName({required String newUserName}) async {
    await _user!.updateDisplayName(newUserName);
  }

  static Future<void> updateUserPhotoUrl({required String newPhotoUrl}) async {
    await _user!.updatePhotoURL(newPhotoUrl);
  }

  static Future<void> verifyEmail() async {
    await _user!.sendEmailVerification();
  }

  static Future<void> sendResetEmailPassword(
      {required String userEmail}) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: userEmail);
  }

  // delete a user and his data should be delelted too except his posts
  static Future<void> deleteUser() async {
    await _user!.delete();
  }

  static Future<void> signout() async {
    await FirebaseAuth.instance.signOut();
  }

  static Future<void> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  // needs a way to handle the signup errors
  static signupWithEmailAndPassword({
    required String email,
    required String password,
    required String passwordConfirm,
  }) async {
    try {
      if (email == '') {
        throw FirebaseAuthException(code: 'empty-email');
      }
      if (password == '') {
        throw FirebaseAuthException(code: 'empty-password');
      }
      if (passwordConfirm != password) {
        throw FirebaseAuthException(code: "pass-confirm-wrong");
      }

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          // do something in this case
          break;
        case 'email-already-in-use':
          // do something in this case
          break;
        case 'pass-confirm-wrong':
          // do something in this case
          break;
        case 'invalid-email':
          // do something in this case
          break;
        case 'empty-password':
          // do something in this case
          break;
        case 'empty-email':
          // do somethings in this case
          break;
      }
    } catch (e) {
      log(e.toString());
    }
  }

}
