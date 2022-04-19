import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_cubit/domain/entities/post.dart';
import 'package:flutter_clean_cubit/infra/models/post_model.dart';
import 'package:flutter_clean_cubit/infra/models/user_model.dart';
import 'package:flutter_clean_cubit/presenter/pages/create_post/cubit/create_post_cubit.dart';

class CreatePostPage extends StatelessWidget {
  const CreatePostPage({Key? key}) : super(key: key);

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
