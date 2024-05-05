import 'dart:async';

import 'package:cars/core/error/exception.dart';
import 'package:cars/core/error/failure.dart';
import 'package:cars/core/network/internet_connection.dart';
import 'package:cars/features/auth/data/datasource/auth_data_source_remote_abstract.dart';
import 'package:cars/features/auth/data/models/user_model.dart';
import 'package:cars/features/auth/domain/entities/user_entitires.dart';
import 'package:cars/features/auth/domain/repos/auth_repo.dart';


import 'package:fpdart/fpdart.dart';



enum AuthStatus {
  authenticated,
  unauthenticated,
}

class AuthRepoImpl implements AuthRepo {
  final AuthDataSourceRemote remoteDataSourse;
  final ConnectionChecker connectionChecker;

  AuthRepoImpl(this.remoteDataSourse, this.connectionChecker);

  @override
  Future<Either<Failure, UserModel>> currentUser() {
    // TODO: implement currentUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserModel>> signInWithEmailPassword(
      {required String email, required String password}) async {
    return _getUser(() => )
    
  }

  @override
  Future<Either<Failure, UserModel>> signUpWithEmailPassword(
      {required String id, required String email, required String name, required String photoUrl}) {
    // TODO: implement signUpWithEmailPassword
    throw UnimplementedError();
  }

  Future<Either<Failure, UserModel>> _getUser(
      Future<UserEntities> Function() fn) async {
    try {
      if (!await (connectionChecker.isConnected)) {
        return left(Failure('No internet connection'));
      }
      final user = await fn();
      return right(user);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }
}


