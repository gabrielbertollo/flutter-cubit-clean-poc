import 'package:flutter_clean_cubit/domain/entities/post.dart';
import 'package:flutter_clean_cubit/infra/datasources/posts_external_datasource.dart';
import 'package:flutter_clean_cubit/infra/models/post_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PostsExternalDatasource)
class PostsExternalDatasourceMock implements PostsExternalDatasource {
  @override
  Future<List<Post>> getPosts() async {
    return Future.delayed(
      const Duration(seconds: 2),
      () => PostModel.fakeList(15),
    );
  }
}
