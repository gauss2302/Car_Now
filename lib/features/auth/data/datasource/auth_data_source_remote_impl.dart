import 'dart:developer';

import 'package:cars/core/error/exception.dart';
import 'package:cars/features/auth/data/datasource/auth_data_source_remote_abstract.dart';
import 'package:cars/features/auth/data/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRemoteDataSourceImpl implements AuthDataSourceRemote {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final usersCollection = FirebaseFirestore.instance.collection('users');

  @override
  Future<UserModel> signInWithEmailPassword(
      {required String email, required String password}) async {
    try {
      final res = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return UserModel.fromJson(res.user!.to());
    } catch (e) {}
    throw UnimplementedError();
  }

  @override
  Future<UserModel> signUpWithEmailPassword(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final res = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (res.user == null) {
        throw const ServerException("No User");
      }
      return UserModel.fromJson(res.user!.toJson());
    } on AuthException catch (e) {}
    throw UnimplementedError();
  }

  // @override
  // get currentUserSession => throw UnimplementedError();

  @override
  Future<UserModel?> getCurrentUserData() {
    // TODO: implement getCurrentUserData
    throw UnimplementedError();
  }
}
