import 'package:faker/faker.dart';
import 'package:flutter_clean_cubit/domain/entities/post.dart';
import 'package:flutter_clean_cubit/domain/entities/user.dart';
import 'package:flutter_clean_cubit/infra/models/user_model.dart';

class PostModel extends Post {
  const PostModel({
    required int id,
    required String body,
    required User author,
    required String imageUrl,
    required int likes,
  }) : super(
          id: id,
          body: body,
          author: author,
          imageUrl: imageUrl,
          likes: likes,
        );

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      body: json['body'],
      author: UserModel.fromJson(json['author']),
      imageUrl: json['imageUrl'],
      likes: json['likes'],
    );
  }

  factory PostModel.fake() {
    return PostModel(
      id: faker.randomGenerator.integer(999),
      body: faker.lorem.sentence(),
      author: UserModel.fake(),
      imageUrl: faker.image.image(random: true),
      likes: faker.randomGenerator.integer(999),
    );
  }

  static List<PostModel> fakeList(int length) {
    return List<PostModel>.generate(
      length,
      (i) => PostModel.fake(),
    );
  }
}
