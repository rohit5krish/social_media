import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StorageMethods {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> uploadImageStorage(
      String folderName, Uint8List imgFile, bool isPost) async {
    Reference folderRef =
        _storage.ref().child(folderName).child(_auth.currentUser!.uid);
    if (isPost) {
      // Pic Folder name (UID + DateTime)
      final String picFolderName =
          '${_auth.currentUser!.uid}${DateTime.now().toString().replaceRange(10, 11, '_')}';
      folderRef = folderRef.child(picFolderName);
    }
    UploadTask uploadTask = folderRef.putData(imgFile);

    TaskSnapshot snap = await uploadTask;
    String imgUrl = await snap.ref.getDownloadURL();
    return imgUrl;
  }
}
