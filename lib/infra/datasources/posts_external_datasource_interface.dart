import 'package:flutter_clean_cubit/domain/entities/post_entity.dart';

abstract class IPostsExternalDatasource {
  Future<List<PostEntity>> getPosts();
}
