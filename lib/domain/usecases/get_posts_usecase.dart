import 'package:flutter_clean_cubit/domain/entities/post.dart';
import 'package:flutter_clean_cubit/domain/repositories/posts_repository_interface.dart';

class GetPostsUsecase {
  final PostsRepository postsRepository;

  GetPostsUsecase(this.postsRepository);

  Future<List<Post>> call() async {
    return await postsRepository.getPosts();
  }
}
