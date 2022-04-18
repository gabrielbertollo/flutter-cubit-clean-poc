import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_cubit/domain/entities/post_entity.dart';

part 'create_post_state.dart';

class CreatePostCubit extends Cubit<CreatePostState> {
  final TextEditingController createPostTextEditingController =
      TextEditingController();

  CreatePostCubit() : super(const CreatePostInitial());

  PostEntity createPost(PostEntity post) {
    emit(const CreatePostLoading());
    return post;
  }
}
