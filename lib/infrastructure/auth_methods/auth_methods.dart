import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_auth/email_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:social_media/domain/user_model/user_model.dart';
import 'package:social_media/infrastructure/storage_methods/storage_methods.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  EmailAuth emailAuth = EmailAuth(sessionName: "Connect App");
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

        final UserModel _user = UserModel(
            username: username,
            email: email,
            photoUrl: profileUrl,
            bio: null,
            uid: userCred.user!.uid,
            following: [],
            followers: []);

        // Store Auth Credentials in Firestore
        await _firestore
            .collection('users')
            .doc(userCred.user!.uid)
            .set(_user.toJson());
        resp = 'success';
      }
    } on FirebaseAuthException catch (err) {
      resp = err.message.toString();
    } catch (e) {
      resp = e.toString();
    }
    return resp;
  }

  Future<String> sendOtp({required String email}) async {
    try {
      bool isOtpSend =
          await emailAuth.sendOtp(recipientMail: email, otpLength: 4);
      if (isOtpSend) {
        resp = "success";
      } else {
        return 'Error Occured.Please try again later.';
      }
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

// Signout User
  Future<void> SignOutUser() async {
    await _auth.signOut();
  }

// Google Login Method
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

// Forgot Pass Otp Sending
  Future<String> ForgotPassword(String email) async {
    try {
      List<String> result = await _auth.fetchSignInMethodsForEmail(email);

      if (!result.contains('password')) {
        return 'No accounts linked with this email.';
      }
      await _auth.sendPasswordResetEmail(email: email);
      return 'Password reset link sent to email.';
    } on FirebaseAuthException catch (error) {
      return error.message.toString();
    } catch (e) {
      return e.toString();
    }
  }

  // Verify OTP
  Future<bool> VerifyOtp(String email, String otp) async {
    bool isVerified = emailAuth.validateOtp(recipientMail: email, userOtp: otp);
    return isVerified;
  }

  // Delete User
  Future<void> DeleteUser() async {
    User? _usr = _auth.currentUser;
    await _usr!.delete();
  }
}
