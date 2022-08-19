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
    String? description,
  }) async {
    String res = 'Unknown Error';
    try {
      String postUrl =
          await StorageMethods().uploadImageStorage('posts', imgFile, true);
      final PostModel _post = PostModel(
          postUrl: postUrl,
          postId: 'postId',
          uid: uid,
          likes: [],
          datePosted: DateTime.now(),
          description: description);
      // firestore.collection('posts').
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}
