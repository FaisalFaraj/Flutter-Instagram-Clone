import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/story/user_story.model.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/widgets/story_progress_bar.widget.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/widgets/story_user_details.widget.dart';

class StoryHeaderWidget extends StatelessWidget {
  final UserStoryModel userStoryModel;
  final ValueChanged<int> currentWatchingStoryIndex;
  final String? heroTag;
  const StoryHeaderWidget(
      {super.key,
      required this.userStoryModel,
      required this.currentWatchingStoryIndex,
      this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          StoryProgressBarWidget(
            userStoryModel: userStoryModel,
            currentWatchingStoryIndex: currentWatchingStoryIndex,
          ),
          StoryUserDetailsWidget(
              userModel: userStoryModel.createdBy, heroTag: heroTag),
        ],
      ),
    );
  }
}
