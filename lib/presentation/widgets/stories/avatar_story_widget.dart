import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/story/user_story.model.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/story.screen.dart';
import 'package:flutter_instagram_clone/presentation/widgets/user/user_avatar.widget.dart';

class AvatarStoryWidget extends StatelessWidget {
  final UserStoryModel userStoryModel;
  const AvatarStoryWidget({super.key, required this.userStoryModel});

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StoryScreen(userStoryModel: userStoryModel),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            color: currentTheme.colorScheme.primary,
            height: 105,
            width: 85,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              height: 90,
              width: 85,
              child: Image.network(
                userStoryModel.stories.first.media,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: -2,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                UserAvatarWidget(
                  userModel: userStoryModel.createdBy,
                  width: 45,
                  height: 45,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  userStoryModel.createdBy.username,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
