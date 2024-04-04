import 'package:cars/features/auth/data/models/user_model.dart';

abstract interface class AuthDataSourceRemote {
  Future<UserModel> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
  Future<UserModel> signInWithEmailPassword({
    required String email,
    required String password,
  });
}
