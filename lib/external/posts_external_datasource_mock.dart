import 'package:flutter_clean_cubit/domain/entities/post_entity.dart';
import 'package:flutter_clean_cubit/infra/datasources/posts_external_datasource_interface.dart';
import 'package:flutter_clean_cubit/infra/models/post_model.dart';

class PostsExternalDatasourceMock implements IPostsExternalDatasource {
  @override
  Future<List<PostEntity>> getPosts() async {
    return Future.delayed(
      const Duration(seconds: 2),
      () => PostModel.fakeList(15),
    );
  }
}
