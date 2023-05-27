import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/user/user.model.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/story.screen.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/stories.viewmodel.dart';
import 'package:provider/provider.dart';

class UserAvatarWidget extends StatelessWidget {
  final UserModel userModel;
  final double width;
  final double height;

  const UserAvatarWidget(
      {super.key,
      required this.userModel,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    // create custom hero tag
    String heroTag = 'user_${userModel.id}_${Random().nextInt(10000)}';

    return Consumer<StoriesViewModel>(
      builder: (context, provider, _) {
        var userStoryModel = provider.getUserStoriesById(userModel.id);
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StoryScreen(
                  userStoryModel: userStoryModel,
                  heroTag: heroTag,
                ),
              ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: width,
                height: height,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.purple, Colors.pink, Colors.orange],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox.fromSize(
                    // Image radius
                    child: Image.network(
                      userModel.profileImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
