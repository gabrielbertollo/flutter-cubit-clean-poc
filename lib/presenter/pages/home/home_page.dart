import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/dependency_injection/dependency_injection.dart';
import 'cubit/posts_cubit.dart';
import 'widgets/post_widget.dart';

class HomePage extends StatefulWidget implements AutoRouteWrapper {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostsCubit>(),
      child: this,
    );
  }
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    final postsCubit = context.read<PostsCubit>();
    postsCubit.getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POC Flutter Clean Cubit'),
      ),
      body: SafeArea(
        child: BlocConsumer<PostsCubit, PostsState>(
          listener: (context, state) {
            if (state is PostsError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is PostsInitial) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is PostsLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is PostsError) {
              return Center(
                child: Text(state.message),
              );
            } else if (state is PostsLoaded) {
              return ListView.builder(
                itemCount: state.posts.length,
                itemBuilder: (context, index) {
                  final post = state.posts[index];
                  return PostWidget(
                    post: post,
                  );
                },
              );
            } else {
              return Container();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.pushNamed('create_post');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
