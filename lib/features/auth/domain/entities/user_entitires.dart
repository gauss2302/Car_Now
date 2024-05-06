import 'package:cars/features/auth/data/models/user_model.dart';
import 'package:equatable/equatable.dart';

class UserEntities extends Equatable {
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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'photoUrl': photoUrl,
    };
  }
}
