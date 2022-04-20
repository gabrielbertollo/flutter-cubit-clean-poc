import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_cubit/domain/entities/post.dart';
import 'package:injectable/injectable.dart';

part 'create_post_state.dart';

@injectable
class CreatePostCubit extends Cubit<CreatePostState> {
  final TextEditingController createPostTextEditingController =
      TextEditingController();

  CreatePostCubit() : super(const CreatePostInitial());

  Post createPost(Post post) {
    emit(const CreatePostLoading());
    return post;
  }
}
