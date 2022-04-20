import 'package:auto_route/auto_route.dart';
import 'package:flutter_clean_cubit/presenter/pages/create_post/create_post_page.dart';
import 'package:flutter_clean_cubit/presenter/pages/home/home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      initial: true,
      path: 'home',
      name: 'HomeRouter',
    ),
    AutoRoute(
      path: 'create_post',
      name: 'CreatePostRouter',
      page: CreatePostPage,
    ),
  ],
)
class $AppRouter {}
