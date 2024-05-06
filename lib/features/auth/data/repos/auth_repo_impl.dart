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

  Future<Either<Failure, UserModel>> _getUser(
      Future<UserEntities> Function() fn) async {
    try {
      if (!await (connectionChecker.isConnected)) {
        return left(Failure('No internet connection'));
      }
      final user = await fn();
      return right(user as UserModel);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }

  @override
  Future<Either<Failure, UserEntities>> currentUser() {
    // TODO: implement currentUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntities>> signInWithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement signInWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntities>> signUpWithEmailPassword(
      {required String name, required String email, required String password}) {
    // TODO: implement signUpWithEmailPassword
    throw UnimplementedError();
  }
}
