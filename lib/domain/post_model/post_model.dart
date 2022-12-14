class PostModel {
  final String postUrl;
  final String postId;
  final String uid;
  final List likes;
  final String username;
  final String? profImage;
  final String? description;
  final datePosted;

  PostModel({
    required this.postUrl,
    required this.postId,
    required this.uid,
    required this.likes,
    required this.datePosted,
    required this.username,
    required this.profImage,
    this.description,
  });

  Map<String, dynamic> toJson() => {
        "postUrl": postUrl,
        "postId": postId,
        "uid": uid,
        "likes": likes,
        "description": description,
        "datePosted": datePosted,
        "username": username,
        "profImage": profImage,
      };
}
