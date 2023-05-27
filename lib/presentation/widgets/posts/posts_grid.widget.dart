import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/post/post.model.dart';
import 'package:flutter_instagram_clone/presentation/screens/profile/profile_posts_list.screen.dart';

class PostsGridWidget extends StatelessWidget {
  final List<PostModel> posts;
  const PostsGridWidget({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: posts.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProfilePostsListScreen(posts: posts)));
              },
              child: Image.network(
                posts[index].media,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
