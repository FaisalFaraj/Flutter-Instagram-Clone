import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/post/post.model.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/post.widget.dart';

class PostsListWidget extends StatelessWidget {
  final List<PostModel> posts;
  const PostsListWidget({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        return PostWidget(postModel: posts[index]);
      },
      itemCount: posts.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 10,
        );
      },
    );
  }
}
