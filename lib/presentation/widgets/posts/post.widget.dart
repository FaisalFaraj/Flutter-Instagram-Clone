import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/post/post.model.dart';
import 'package:flutter_instagram_clone/presentation/viewmodel/user.viewmodel.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/post_comments.widget.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/post_description.widget.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/post_header.widget.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/post_content.widget.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/post_likes.widget.dart';
import 'package:provider/provider.dart';

class PostWidget extends StatelessWidget {
  final PostModel postModel;
  const PostWidget({super.key, required this.postModel});

  @override
  Widget build(BuildContext context) {
    var usersViewModel = Provider.of<UsersViewModel>(context, listen: false);
    var user = usersViewModel.getLoadedUserById(postModel.addBy);
    ThemeData currentTheme = Theme.of(context);

    return Container(
      color: currentTheme.colorScheme.primary,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: currentTheme.colorScheme.secondary,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header
              PostHeaderWidget(
                addBy: user,
                postLocation: postModel.location,
              ),
              const SizedBox(
                height: 10,
              ),
              // content
              PostContentWidget(media: postModel.media),

              const SizedBox(
                height: 5,
              ),

              // // actions
              // const PostActionsWidget(),
              // likes
              const PostLikesWidget(),
              // description
              PostDescriptionWidget(
                addBy: user,
                description: postModel.description,
              ),
              // comments
              const PostCommentsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
