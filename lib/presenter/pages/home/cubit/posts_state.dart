part of 'posts_cubit.dart';

abstract class PostsState {
  PostsState();
}

class PostsInitial extends PostsState {
  PostsInitial();
}

class PostsLoading extends PostsState {
  PostsLoading();
}

class PostsLoaded extends PostsState {
  final Either<Failure, List<Post>> posts;

  PostsLoaded(this.posts);
}

class PostsError extends PostsState {
  final String message;

  PostsError(this.message);
}
