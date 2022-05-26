abstract class TfAuth {
  Future<void> loginWithEmailPassword(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  Future<void> signupWithEmailPassword(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  Future<void> forgotPasswordForEmail({required String email}) {
    throw UnimplementedError();
  }

  Future<void> logout() {
    throw UnimplementedError();
  }

  Future<void> loginWithEmailLink({required String email}) {
    throw UnimplementedError();
  }

  Future<void> loginWithGoogle() {
    throw UnimplementedError();
  }

  Future<void> loginWithApple() {
    throw UnimplementedError();
  }

  Future<void> loginWithFacebook() {
    throw UnimplementedError();
  }
}
