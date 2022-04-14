import 'user_entity.dart';
import 'package:equatable/equatable.dart';

class PostEntity extends Equatable {
  final int id;
  final String body;
  final UserEntity author;
  final String imageUrl;

  const PostEntity({
    required this.id,
    required this.body,
    required this.author,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        id,
        body,
        author,
        imageUrl,
      ];
}
