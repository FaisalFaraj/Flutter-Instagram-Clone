import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/story/user_story.model.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/stories.viewmodel.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/story_watching.viewmodel.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/widgets/story_content.widget.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/widgets/story_footer.widget.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/widgets/story_header.widget.dart';
import 'package:provider/provider.dart';

class StoryScreen extends StatefulWidget {
  final UserStoryModel userStoryModel;
  // for Hero Animation
  final String? heroTag;
  const StoryScreen({super.key, required this.userStoryModel, this.heroTag});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  int activeStoryIndex = 0;

  void goToNextStory(List<UserStoryModel> stories) {
    // check if we have left stories to watch by getting the current index of current story
    int currentUserStoryIndex = stories.indexOf(widget.userStoryModel);
    // finish the story screen if theres no left stories
    if (currentUserStoryIndex < 0 ||
        currentUserStoryIndex == stories.length - 1) {
      Navigator.pop(context);
      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>
            StoryScreen(userStoryModel: stories[currentUserStoryIndex + 1]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StoryWatchingViewModel(),
      child: Scaffold(
        body: Consumer<StoriesViewModel>(
          builder: (context, provider, _) {
            return Stack(
              children: [
                // story content
                GestureDetector(
                  onTap: () => goToNextStory(provider.usersStoriesList),
                  child: StoryContentWidget(
                    storyModel: widget.userStoryModel.stories[activeStoryIndex],
                  ),
                ),
                // story header
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: StoryHeaderWidget(
                    userStoryModel: widget.userStoryModel,
                    heroTag: widget.heroTag,
                    currentWatchingStoryIndex: (int value) {
                      // provider.settActiveStoryIndex(value);
                      setState(() {
                        activeStoryIndex = value;
                      });
                    },
                  ),
                ),
                // story footer
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.black,
                    padding: const EdgeInsets.only(
                      bottom: 20.0,
                      top: 10,
                    ),
                    child: const StoryFooterWidget(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
