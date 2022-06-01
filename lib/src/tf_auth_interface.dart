import 'package:tf_auth_base/src/tf_auth_user.dart';

abstract class TfAuth {
  Future<TfAuthUser> loginWithEmailPassword(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  Future<TfAuthUser> signupWithEmailPassword(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  Future<TfAuthUser> forgotPasswordForEmail({required String email}) {
    throw UnimplementedError();
  }

  Future<TfAuthUser> logout() {
    throw UnimplementedError();
  }

  Future<TfAuthUser> loginWithEmailLink({required String email}) {
    throw UnimplementedError();
  }

  Future<TfAuthUser> loginWithGoogle() {
    throw UnimplementedError();
  }

  Future<TfAuthUser> loginWithApple() {
    throw UnimplementedError();
  }

  Future<TfAuthUser> loginWithFacebook() {
    throw UnimplementedError();
  }
}
