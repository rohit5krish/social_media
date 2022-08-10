import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_media/infrastructure/signup/upload_img_storage.dart';

class SignUpAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> SignUpUser({
    required String username,
    required String email,
    required String password,
    Uint8List? profileImage,
  }) async {
    String resp = 'Unknown Error';

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
}
