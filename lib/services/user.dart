import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class UserServices {

  static Future <void> registerUserFB (String email, password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw Exception("Error in firebase $e");
    }
  }

  static Future <void> loginUser (String email, password) async {
    try {
       await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw Exception("Error in firebase $e");
    }
  }

  static Future<void> signInWithFacebook() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);
    } catch (e) {
      rethrow;
    }
}

}