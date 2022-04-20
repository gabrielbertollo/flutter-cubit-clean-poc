import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/injection_container.dart';
import 'presenter/pages/create_post/create_post_page.dart';
import 'presenter/pages/create_post/cubit/create_post_cubit.dart';
import 'presenter/pages/home/cubit/posts_cubit.dart';
import 'presenter/pages/home/home_page.dart';
import 'core/injection_container.dart' as di;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'POC Flutter Clean Cubit';
    return MaterialApp(
      title: title,
      home: BlocProvider(
        create: (context) => sl<PostsCubit>(),
        child: const HomePage(),
      ),
      routes: {
        '/create_post': (context) => BlocProvider(
              create: (context) => sl<CreatePostCubit>(),
              child: const CreatePostPage(),
            ),
      },
    );
  }
}
