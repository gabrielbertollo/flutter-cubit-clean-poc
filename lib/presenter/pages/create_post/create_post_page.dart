import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/dependency_injection/dependency_injection.dart';
import '../../../infra/models/post_model.dart';
import '../../../infra/models/user_model.dart';
import 'cubit/create_post_cubit.dart';

class CreatePostPage extends StatelessWidget implements AutoRouteWrapper {
  const CreatePostPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CreatePostCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final createPostCubit = context.read<CreatePostCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Create Post'),
            TextFormField(
              controller: createPostCubit.createPostTextEditingController,
              decoration: const InputDecoration(
                labelText: 'Type the post content',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                createPostCubit.createPost(
                  PostModel(
                    author: UserModel.fake(),
                    body: createPostCubit.createPostTextEditingController.text,
                    id: 1,
                    imageUrl: 'https://picsum.photos/id/1/200/300',
                    likes: 0,
                  ),
                );
                Navigator.of(context).pop();
              },
              child: const Text('Publish'),
            ),
          ],
        ),
      ),
    );
  }
}
