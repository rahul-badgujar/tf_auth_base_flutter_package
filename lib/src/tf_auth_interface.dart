import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:tf_auth_base/src/tf_auth_user.dart';

abstract class TfAuth {
  TfAuthUser? _currentUser;

  final StreamController<TfAuthUser?> _userChangesStreamController =
      StreamController<TfAuthUser?>.broadcast();

  /// Returns current user if logged in, otherwise returns `null`
  TfAuthUser? get currentUser {
    return _currentUser;
  }

  /// Update current active user.
  set currentUser(TfAuthUser? userUpdate) {
    _currentUser = userUpdate;
    if (currentUser != userUpdate) {
      _userChangesStreamController.sink.add(_currentUser);
    }
  }

  /// Stream of user changes to listen to user changes events.
  Stream<TfAuthUser?> get userChangesStream {
    return _userChangesStreamController.stream;
  }

  /// Login with [email] and [password] credentials.
  Future<TfAuthUser> loginWithEmailPassword(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  /// Signup for a new account with [email] and [password].
  Future<TfAuthUser> signupWithEmailPassword(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  /// Send a password reset email to given [email] to help set a new password.
  Future<void> forgotPasswordForEmail({required String email}) {
    throw UnimplementedError();
  }

  /// Login with the email link sent on [email].
  Future<TfAuthUser> loginWithEmailLink({required String email}) {
    throw UnimplementedError();
  }

  /// Login with Google Account.
  Future<TfAuthUser> loginWithGoogle() {
    throw UnimplementedError();
  }

  /// Login with Apple Account.
  Future<TfAuthUser> loginWithApple() {
    throw UnimplementedError();
  }

  /// Login with Facebook Account.
  Future<TfAuthUser> loginWithFacebook() {
    throw UnimplementedError();
  }

  /// Logout the current user.
  /// Note: If overriden, call super() in the of end of overriding code.
  @mustCallSuper
  Future<void> logout() async {
    currentUser = null;
  }

  /// Returns `true` if user is not logged in
  bool get isUserNotLoggedIn {
    return currentUser == null;
  }

  /// Returns `true` if user is logged in
  bool get isUserLoggedIn {
    return !isUserNotLoggedIn;
  }
}
