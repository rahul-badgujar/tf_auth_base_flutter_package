class TfAuthUser {
  // TODO: add required fields for user object here in this class
  final String uid;
  final String? displayName;
  final String? email;
  final String? username;
  final bool isEmailVerified;
  final String? photoUrl;

  TfAuthUser({
    required this.uid,
    required this.displayName,
    required this.email,
    required this.username,
    this.isEmailVerified = false,
    required this.photoUrl,
  });

  @override
  bool operator ==(other) => other is TfAuthUser && uid == other.uid;

  @override
  int get hashCode => uid.hashCode;

  factory TfAuthUser.fromJson(Map<String, dynamic> json) {
    return TfAuthUser(
      uid: json["uid"],
      displayName: json["displayName"],
      email: json["email"],
      username: json["username"],
      photoUrl: json["photoUrl"],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "uid": uid,
      "displayName": displayName,
      "email": email,
      "username": username,
      "isEmailVerified": isEmailVerified,
      "photoUrl": photoUrl,
    };
  }
}
