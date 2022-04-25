import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_cubit/core/failure_exception.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/task_extension.dart';

import '../../../../domain/entities/post.dart';
import '../../../../domain/usecases/get_posts_usecase.dart';

part 'posts_state.dart';

@injectable
class PostsCubit extends Cubit<PostsState> {
  final GetPostsUsecase getPostsUsecase;

  Either<Failure, List<Post>>? posts;

  PostsCubit({required this.getPostsUsecase}) : super(PostsInitial());

  Future<void> getPosts() async {
    emit(PostsLoading());

    posts = (await Task(() => getPostsUsecase())
        .attempt()
        .mapLeftToFailure()
        .run()) as Either<Failure, List<Post>>?;

    emit(PostsLoaded(posts!));
  }
}
