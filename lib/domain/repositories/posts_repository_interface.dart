import 'package:flutter_clean_cubit/domain/entities/post.dart';

abstract class IPostsRepository {
  Future<List<Post>> getPosts();
}
