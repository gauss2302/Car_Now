import 'package:cars/features/auth/domain/entities/user_entitires.dart';
import 'package:cars/features/order/presentation/bloc/order_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    String? photoUrl,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  UserEntities toEntity() {
    return UserEntities(
      id: id,
      email: email,
      name: name,
      photoUrl: photoUrl ?? '',
    );
  }

  factory UserModel.fromEntity(UserEntities entity) {
    return UserModel(
      id: entity.id,
      email: entity.email,
      name: entity.name,
      photoUrl: entity.photoUrl,
    );
  }
}
