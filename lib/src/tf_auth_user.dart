import 'package:flutter/semantics.dart';

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
}
