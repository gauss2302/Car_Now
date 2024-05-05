import 'package:cars/core/error/failure.dart';
import 'package:cars/features/auth/domain/entities/user_entitires.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepo {
  Future<Either<Failure, UserEntities>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
  Future<Either<Failure, UserEntities>> signInWithEmailPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, UserEntities>> currentUser();
}
