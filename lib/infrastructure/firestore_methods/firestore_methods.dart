import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:social_media/domain/post_model/post_model.dart';
import 'package:social_media/infrastructure/storage_methods/storage_methods.dart';

class FirestoreMethods {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Upload Post
  Future<String> uploadPost({
    required Uint8List imgFile,
    required String uid,
    required String username,
    String? profImage,
    String? description,
  }) async {
    String res = 'Unknown Error';
    try {
      String postUrl =
          await StorageMethods().uploadImageStorage('posts', imgFile, true);
      final String picFolderName =
          '$uid${DateTime.now().toString().replaceRange(10, 11, '_')}';
      PostModel _post = PostModel(
          postUrl: postUrl,
          postId: picFolderName,
          uid: uid,
          likes: [],
          datePosted: DateTime.now(),
          description: description,
          username: username,
          profImage: profImage);
      await firestore
          .collection('posts')
          .doc(picFolderName)
          .set(_post.toJson());
      res = 'success';
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}
