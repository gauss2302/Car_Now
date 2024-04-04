import 'package:cars/core/error/failure.dart';
import 'package:cars/features/auth/domain/entities/user_entitires.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepo {
  Future<Either<Failure, User>> signUpWithEmailPassword({
    final String id,
    final String email,
    final String name,
    final String photoUrl,
  });

  Future<Either<Failure, User>> signInWithEmailPassword({
    final String email,
    final String password,
  });

  Future<Either<Failure, User>> currentUser();
}
