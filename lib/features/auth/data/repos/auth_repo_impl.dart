import 'package:cars/core/error/failure.dart';
import 'package:cars/features/auth/domain/entities/user_entitires.dart';
import 'package:cars/features/favourite/domain/repositories/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fpdart/src/either.dart';

// class AuthRepoImpl implements AuthRepo {
//   // final FirebaseAuth _firebaseAuth;
//   @override
//   Future<Either<Failure, User>> currentUser() {
//     // TODO: implement currentUser
//     throw UnimplementedError();
//   }

//   @override
//   Future<Either<Failure, User>> signInWithEmailPassword(
//       {String? email, String? password}) async {
//     // TODO: implement signInWithEmailPassword
//     throw UnimplementedError();
//   }

//   @override
//   Future<Either<Failure, User>> signUpWithEmailPassword(
//       {String id, String email, String name, String photoUrl}) {
//     // TODO: implement signUpWithEmailPassword
//     throw UnimplementedError();
//   }
// }
