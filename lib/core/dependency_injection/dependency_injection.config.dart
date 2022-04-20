// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/repositories/posts_repository.dart' as _i6;
import '../../domain/usecases/get_posts_usecase.dart' as _i8;
import '../../external/posts_external_datasource_mock.dart' as _i5;
import '../../infra/datasources/posts_external_datasource.dart' as _i4;
import '../../infra/repositories/posts_repository_impl.dart' as _i7;
import '../../presenter/pages/create_post/cubit/create_post_cubit.dart' as _i3;
import '../../presenter/pages/home/cubit/posts_cubit.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.CreatePostCubit>(() => _i3.CreatePostCubit());
  gh.lazySingleton<_i4.PostsExternalDatasource>(
      () => _i5.PostsExternalDatasourceMock());
  gh.lazySingleton<_i6.PostsRepository>(() => _i7.PostsRepositoryImpl(
      postsExternalDatasource: get<_i4.PostsExternalDatasource>()));
  gh.lazySingleton<_i8.GetPostsUsecase>(
      () => _i8.GetPostsUsecase(get<_i6.PostsRepository>()));
  gh.factory<_i9.PostsCubit>(
      () => _i9.PostsCubit(getPostsUsecase: get<_i8.GetPostsUsecase>()));
  return get;
}
