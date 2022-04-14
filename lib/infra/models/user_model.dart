import 'package:faker/faker.dart';
import 'package:flutter_clean_cubit/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required int id,
    required String name,
    required String email,
    required String avatarUrl,
  }) : super(
          id: id,
          name: name,
          email: email,
          avatarUrl: avatarUrl,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      avatarUrl: json['avatarUrl'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'avatarUrl': avatarUrl,
      };

  factory UserModel.fake() {
    return UserModel(
      id: faker.randomGenerator.integer(999),
      name: faker.person.name(),
      email: faker.internet.email(),
      avatarUrl: faker.image.image(random: true),
    );
  }
}
