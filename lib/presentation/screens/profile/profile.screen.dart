import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/post/post.model.dart';
import 'package:flutter_instagram_clone/data/models/user/user.model.dart';
import 'package:flutter_instagram_clone/presentation/screens/feed/posts.viewmodel.dart';
import 'package:flutter_instagram_clone/presentation/screens/profile/pofile_header.widget.dart';
import 'package:flutter_instagram_clone/presentation/screens/profile/profile_actions.widget.dart';
import 'package:flutter_instagram_clone/presentation/screens/profile/profile_info.widget.dart';
import 'package:flutter_instagram_clone/presentation/viewmodel/user.viewmodel.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/posts_grid.widget.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  final UserModel userModel;

  const ProfileScreen({super.key, required this.userModel});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: currentTheme.colorScheme.primary,
        title: Text(
          widget.userModel.username,
          style: TextStyle(
            color: currentTheme.colorScheme.onPrimary,
          ),
        ),
        centerTitle: false,
        actions: [
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.more_vert,
                color: currentTheme.colorScheme.onPrimary,
              ),
            ),
            onTap: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar and Statistics
            ProfileHeaderWidget(userModel: widget.userModel),
            // Name and bio and link
            const SizedBox(
              height: 10,
            ),
            ProfileInfoWidget(userModel: widget.userModel),
            // edit profile or follow and message
            const SizedBox(
              height: 10,
            ),
            Consumer<UsersViewModel>(builder: (context, provider, _) {
              return ProfileActionsWidget(
                isLoggedUser:
                    widget.userModel.id == provider.usersList.first.id,
              );
            }),
            // media grid
            const SizedBox(
              height: 10,
            ),
            Consumer<PostsViewModel>(
              builder: (context, postsViewModel, _) {
                var userPosts =
                    postsViewModel.getPostsByUserId(widget.userModel.id);
                return FutureBuilder<List<PostModel>>(
                  future: userPosts,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return PostsGridWidget(posts: snapshot.data!);
                    }
                    return Container();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
