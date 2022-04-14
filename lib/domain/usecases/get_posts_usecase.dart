import 'package:flutter_clean_cubit/domain/entities/post_entity.dart';
import 'package:flutter_clean_cubit/domain/repositories/posts_repository_interface.dart';

class GetPostsUsecase {
  final IPostsRepository postsRepository;

  GetPostsUsecase(this.postsRepository);

  Future<List<PostEntity>> call() async {
    return await postsRepository.getPosts();
  }
}
