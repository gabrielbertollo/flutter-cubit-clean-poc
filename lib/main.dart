import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_cubit/external/posts_external_datasource_mock.dart';
import 'package:flutter_clean_cubit/presenter/pages/create_post/create_post_page.dart';
import 'package:flutter_clean_cubit/presenter/pages/create_post/cubit/create_post_cubit.dart';
import 'package:flutter_clean_cubit/presenter/pages/home/cubit/posts_cubit.dart';

import 'presenter/pages/home/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'POC Flutter Clean Cubit';
    return MaterialApp(
      title: title,
      home: BlocProvider(
        create: (context) => PostsCubit(
          datasourceMock: PostsExternalDatasourceMock(),
        ),
        child: const HomePage(),
      ),
      routes: {
        '/create_post': (context) => BlocProvider(
              create: (context) => CreatePostCubit(),
              child: const CreatePostPage(),
            ),
      },
    );
  }
}
