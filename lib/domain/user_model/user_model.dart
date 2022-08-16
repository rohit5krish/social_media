class UserModel {
  final String username;
  final String email;
  final String uid;
  final List following;
  final List followers;
  final String? photoUrl;
  final String? bio;

  UserModel({
    required this.username,
    required this.email,
    required this.uid,
    required this.following,
    required this.followers,
    this.photoUrl,
    this.bio,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "photoUrl": photoUrl,
        "bio": bio,
        "uid": uid,
        "following": following,
        "followers": followers,
      };
}
