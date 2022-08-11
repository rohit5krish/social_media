import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:social_media/infrastructure/storage_methods/storage_methods.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String resp = 'Unknown Error';
// Sign Up User
  Future<String> SignUpUser({
    required String username,
    required String email,
    required String password,
    Uint8List? profileImage,
  }) async {
    try {
      if (username.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
        String? profileUrl;

        // Created Authentication
        UserCredential userCred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        // Upload to Storage
        if (profileImage != null) {
          profileUrl = await StorageMethods()
              .uploadImageStorage('ProfilePics', profileImage, false);
        }

        // Store Auth Credentials in Firestore
        await _firestore.collection('users').doc(userCred.user!.uid).set({
          'username': username,
          'email': email,
          'uid': userCred.user!.uid,
          'followers': [],
          'following': [],
          'profilePic': profileUrl,
        });
        resp = "success";
      }
    } on FirebaseAuthException catch (err) {
      resp = err.message.toString();
    } catch (e) {
      resp = e.toString();
    }
    return resp;
  }

// Login User
  Future<String> LoginUser({
    required String email,
    required String password,
  }) async {
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        resp = "success";
      } else {
        resp = "Enter all Fields";
      }
    } on FirebaseAuthException catch (error) {
      if (error.code == "user-not-found") {
        resp = "No User Found.";
      } else if (error.code == "wrong-password") {
        resp = "Wrong Password. Check password and try again.";
      } else {
        resp = error.message.toString();
      }
    } catch (err) {
      resp = err.toString();
    }
    return resp;
  }

  Future<void> SignOutUser() async {
    await _auth.signOut();
  }

  Future<void> GoogleLogin() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _auth.signInWithCredential(credential);
    }
  }
}
