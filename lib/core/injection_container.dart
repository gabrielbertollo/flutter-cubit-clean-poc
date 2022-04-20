import 'package:flutter_clean_cubit/domain/repositories/posts_repository.dart';
import 'package:flutter_clean_cubit/domain/usecases/get_posts_usecase.dart';
import 'package:flutter_clean_cubit/external/posts_external_datasource_mock.dart';
import 'package:flutter_clean_cubit/infra/datasources/posts_external_datasource.dart';
import 'package:flutter_clean_cubit/infra/repositories/posts_repository_impl.dart';
import 'package:flutter_clean_cubit/presenter/pages/create_post/cubit/create_post_cubit.dart';
import 'package:flutter_clean_cubit/presenter/pages/home/cubit/posts_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void init() {
  // Register blocs
  sl.registerFactory(
    () => PostsCubit(
      getPostsUsecase: sl(),
    ),
  );
  sl.registerFactory(
    () => CreatePostCubit(),
  );

  // Register external datasources
  sl.registerLazySingleton<PostsExternalDatasource>(
    () => PostsExternalDatasourceMock(),
  );

  // Register usecases
  sl.registerLazySingleton<GetPostsUsecase>(
    () => GetPostsUsecase(
      sl(),
    ),
  );

  // Register repositories
  sl.registerLazySingleton<PostsRepository>(
    () => PostsRepositoryImpl(
      postsExternalDatasource: sl(),
    ),
  );
}
