import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../domain/entities/post_entity.dart';
import '../../../../external/posts_external_datasource_mock.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  final PostsExternalDatasourceMock datasourceMock;

  PostsCubit({required this.datasourceMock}) : super(const PostsInitial());

  Future<void> getPosts() async {
    emit(const PostsLoading());

    try {
      final posts = await datasourceMock.getPosts();
      emit(PostsLoaded(posts));
    } catch (e) {
      emit(PostsError(e.toString()));
    }
  }
}
