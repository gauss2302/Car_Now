import 'package:cars/features/auth/domain/entities/user_entitires.dart';
import 'package:flutter/foundation.dart';

class UserModel extends User {
  UserModel({
    required super.id,
    required super.email,
    required super.name,
    required super.photoUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      photoUrl: map['photoUrl'] ?? '',
    );
  }

  UserModel copyWith({
    String? id,
    String? email,
    String? name,
    String? photoUrl,
  }) {
    return UserModel(
      id: id ?? super.id,
      email: email ?? super.email,
      name: name ?? super.name,
      photoUrl: photoUrl ?? super.photoUrl,
    );
  }
}
