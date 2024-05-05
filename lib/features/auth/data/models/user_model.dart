import 'package:cars/features/auth/domain/entities/user_entitires.dart';

class UserModel {
  UserModel({
    required id,
    required email,
    required name,
  });

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      // photoUrl: map['photoUrl'] ?? '',
    );
  }

  factory UserModel.fromEntity(UserEntities entity) {
    return UserModel(
      id: entity.id,
      email: entity.email,
      name: entity.name,
      // photoUrl: entity.photoUrl,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': super.id,
      'email': super.email,
      'name': super.name,
      // 'photoUrl': super.photoUrl,
    };
  }
}
