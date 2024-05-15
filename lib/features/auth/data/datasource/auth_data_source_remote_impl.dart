import 'package:cars/core/error/exception.dart';
import 'package:cars/features/auth/data/datasource/auth_data_source_remote_abstract.dart';
import 'package:cars/features/auth/data/models/user_model.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRemoteDataSourceImpl implements AuthDataSourceRemote {
  final FirebaseAuth _firebaseAuth;
  final usersCollection = FirebaseFirestore.instance.collection('users');

  AuthRemoteDataSourceImpl({
    FirebaseAuth? firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  @override
  Future<UserModel> signInWithEmailPassword(
      {required String email, required String password}) async {
    try {
      final res = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      // return UserModel.fromJson();
    } catch (e) {}
    throw UnimplementedError();
  }

  @override
  Future<UserModel> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCred =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await usersCollection.doc(userCred.user!.uid).set({
        'name': name,
        'email': email,
        // Add other user data if needed
      });
      // Return a UserModel object based on the created user's data
      return UserModel(
        id: userCred.user!.uid,
        email: email,
        name: name,
        // Add other user data if needed
      );
    } catch (e) {
      // Catch any exception and rethrow it as a ServerException
      throw ServerException("Failed to register: $e");
    }
  }

  @override
  Future<UserModel?> getCurrentUserData() {
    // TODO: implement getCurrentUserData
    throw UnimplementedError();
  }
}
