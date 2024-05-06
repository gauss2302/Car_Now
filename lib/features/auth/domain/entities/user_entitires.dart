import 'package:cars/features/auth/data/models/user_model.dart';
import 'package:equatable/equatable.dart';

class UserEntities extends Equatable implements UserModel {
  final String id;
  final String email;
  final String name;
  final String photoUrl;

  const UserEntities({
    required this.id,
    required this.email,
    required this.name,
    required this.photoUrl,
  });

  @override
  List<Object?> get props => [id, email, name, photoUrl];

  @override
  // TODO: implement copyWith
  $UserModelCopyWith<UserModel> get copyWith => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
