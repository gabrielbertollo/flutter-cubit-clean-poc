part of 'create_post_cubit.dart';

abstract class CreatePostState extends Equatable {
  const CreatePostState();

  @override
  List<Object> get props => [];
}

class CreatePostInitial extends CreatePostState {
  const CreatePostInitial();

  @override
  List<Object> get props => [];
}

class CreatePostLoading extends CreatePostState {
  const CreatePostLoading();

  @override
  List<Object> get props => [];
}

class CreatePostLoaded extends CreatePostState {
  const CreatePostLoaded();

  @override
  List<Object> get props => [];
}

class CreatePostError extends CreatePostState {
  final String message;

  const CreatePostError(this.message);

  @override
  List<Object> get props => [message];
}
