import 'package:flutter_clean_cubit/domain/entities/post.dart';

abstract class IPostsExternalDatasource {
  Future<List<Post>> getPosts();
}
