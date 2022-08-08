import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> SignUpUser({
    required String username,
    required String email,
    required String password,
  }) async {
    String resp = 'Error';

    try {
      if (username.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
        UserCredential userCred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        await _firestore.collection('users').doc(userCred.user!.uid).set({
          'username': username,
          'email': email,
          'uid': userCred.user!.uid,
          'followers': [],
          'following': [],
        });
        resp = "Success";
      }
    } catch (e) {
      resp = e.toString();
    }
    return resp;
  }
}
