part of 'posts_cubit.dart';

@immutable
abstract class PostsState {
  const PostsState();
}

class PostsInitial extends PostsState {
  const PostsInitial();
}

class PostsLoading extends PostsState {
  const PostsLoading();
}

class PostsLoaded extends PostsState {
  final List<Post> posts;

  const PostsLoaded(this.posts);
}

class PostsError extends PostsState {
  final String message;

  const PostsError(this.message);
}
