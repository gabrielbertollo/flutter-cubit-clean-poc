import 'user.dart';
import 'package:equatable/equatable.dart';

class Post extends Equatable {
  final int id;
  final String body;
  final User author;
  final String imageUrl;
  final int likes;

  const Post({
    required this.id,
    required this.body,
    required this.author,
    required this.imageUrl,
    required this.likes,
  });

  @override
  List<Object?> get props => [
        id,
        body,
        author,
        imageUrl,
        likes,
      ];
}
