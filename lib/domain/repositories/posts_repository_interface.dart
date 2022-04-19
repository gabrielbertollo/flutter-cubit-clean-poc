import 'package:flutter_clean_cubit/domain/entities/post.dart';

abstract class PostsRepository {
  Future<List<Post>> getPosts();
}
