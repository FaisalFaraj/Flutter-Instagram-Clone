import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/post/post.model.dart';
import 'package:flutter_instagram_clone/presentation/viewmodel/user.viewmodel.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/post_comments.widget.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/post_description.widget.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/post_header.widget.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/post_content.widget.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/post_likes.widget.dart';
import 'package:provider/provider.dart';
import 'package:screentasia/screentasia.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20).r,
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
              SizedBox(
                height: 10.h,
              ),
              // content
              PostContentWidget(media: postModel.media),

              SizedBox(
                height: 5.w,
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
