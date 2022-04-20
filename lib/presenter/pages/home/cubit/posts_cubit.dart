import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../domain/entities/post.dart';
import '../../../../domain/usecases/get_posts_usecase.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  final GetPostsUsecase getPostsUsecase;

  PostsCubit({required this.getPostsUsecase}) : super(const PostsInitial());

  Future<void> getPosts() async {
    emit(const PostsLoading());

    try {
      final posts = await getPostsUsecase();
      emit(PostsLoaded(posts));
    } catch (e) {
      emit(PostsError(e.toString()));
    }
  }
}
