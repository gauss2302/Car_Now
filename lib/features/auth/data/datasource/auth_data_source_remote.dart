import 'package:cars/features/auth/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

class AuthRemoteDataSourceImpl implements AuthDataSourceRemote {
  @override
  Future<UserModel> signInWithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement signInWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<UserModel> signUpWithEmailPassword(
      {required String name, required String email, required String password}) {
    // TODO: implement signUpWithEmailPassword
    throw UnimplementedError();
  }

  // @override
  // Future<UserModel> signUpWithEmailPassword(
  //     {required String name,
  //     required String email,
  //     required String password}) async {
  //       try {
  //         final res = await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //           email: email,
  //           password: password,
  //         );
  //       } catch (e) {

  //       }
}
