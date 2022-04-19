import 'package:flutter_clean_cubit/domain/entities/post.dart';

abstract class PostsExternalDatasource {
  Future<List<Post>> getPosts();
}
