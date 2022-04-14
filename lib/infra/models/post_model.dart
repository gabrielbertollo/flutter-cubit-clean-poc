import 'package:faker/faker.dart';
import 'package:flutter_clean_cubit/domain/entities/post_entity.dart';
import 'package:flutter_clean_cubit/domain/entities/user_entity.dart';
import 'package:flutter_clean_cubit/infra/models/user_model.dart';

class PostModel extends PostEntity {
  const PostModel({
    required int id,
    required String body,
    required UserEntity author,
    required String imageUrl,
  }) : super(
          id: id,
          body: body,
          author: author,
          imageUrl: imageUrl,
        );

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      body: json['body'],
      author: UserModel.fromJson(json['author']),
      imageUrl: json['imageUrl'],
    );
  }

  factory PostModel.fake() {
    return PostModel(
      id: faker.randomGenerator.integer(999),
      body: faker.lorem.sentence(),
      author: UserModel.fake(),
      imageUrl: faker.image.image(random: true),
    );
  }

  static List<PostModel> fakeList(int length) {
    return List<PostModel>.generate(
      length,
      (i) => PostModel.fake(),
    );
  }
}
