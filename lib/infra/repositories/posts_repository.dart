import 'package:flutter_clean_cubit/domain/entities/post.dart';
import 'package:flutter_clean_cubit/domain/repositories/posts_repository_interface.dart';
import 'package:flutter_clean_cubit/infra/datasources/posts_external_datasource_interface.dart';

class PostsRepository implements IPostsRepository {
  final IPostsExternalDatasource _postsExternalDatasource;

  const PostsRepository({
    required IPostsExternalDatasource postsExternalDatasource,
  }) : _postsExternalDatasource = postsExternalDatasource;

  @override
  Future<List<Post>> getPosts() async {
    return await _postsExternalDatasource.getPosts();
  }
}
