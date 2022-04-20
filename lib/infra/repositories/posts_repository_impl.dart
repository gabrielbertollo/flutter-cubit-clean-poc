import 'package:flutter_clean_cubit/domain/entities/post.dart';
import 'package:flutter_clean_cubit/domain/repositories/posts_repository.dart';
import 'package:flutter_clean_cubit/infra/datasources/posts_external_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PostsRepository)
class PostsRepositoryImpl implements PostsRepository {
  final PostsExternalDatasource _postsExternalDatasource;

  const PostsRepositoryImpl({
    required PostsExternalDatasource postsExternalDatasource,
  }) : _postsExternalDatasource = postsExternalDatasource;

  @override
  Future<List<Post>> getPosts() async {
    return await _postsExternalDatasource.getPosts();
  }
}
