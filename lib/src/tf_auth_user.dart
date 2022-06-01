class TfAuthUser {
  // TODO: add required fields for user object here in this class
  final int uid;
  final String displayName;
  final String email;
  final String username;
  final bool isEmailVerified;
  final String photoUrl;

  TfAuthUser({
    required this.uid,
    required this.displayName,
    required this.email,
    required this.username,
    required this.isEmailVerified,
    required this.photoUrl,
  });
}
