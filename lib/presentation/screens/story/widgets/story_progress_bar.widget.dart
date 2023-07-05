import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/story/story.model.dart';
import 'package:flutter_instagram_clone/data/models/story/user_story.model.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/story.screen.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/stories.viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:screentasia/screentasia.dart';

class StoryProgressBarWidget extends StatefulWidget {
  final UserStoryModel userStoryModel;
  final ValueChanged<int> currentWatchingStoryIndex;
  const StoryProgressBarWidget({
    super.key,
    required this.userStoryModel,
    required this.currentWatchingStoryIndex,
  });

  @override
  State<StoryProgressBarWidget> createState() => _StoryProgressBarWidgetState();
}

class _StoryProgressBarWidgetState extends State<StoryProgressBarWidget> {
  int activeStoryIndex = 0;
  int storyListIndex(StoryModel e) {
    return widget.userStoryModel.stories.indexOf(e);
  }

  @override
  Widget build(BuildContext context) {
    var stories = widget.userStoryModel.stories;

    return Row(
      children: stories.map((e) {
        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 4.w),
            child: Consumer<StoriesViewModel>(builder: (context, provider, _) {
              return SingleProgressBar(
                isActiveStory: activeStoryIndex == storyListIndex(e),
                onFinishWatching: () {
                  if (activeStoryIndex < stories.length - 1) {
                    setState(() {
                      activeStoryIndex = activeStoryIndex + 1;
                    });
                    widget.currentWatchingStoryIndex(activeStoryIndex);
                  } else {
                    goToNextStory(provider.usersStoriesList);
                  }
                },
                storyModel:
                    widget.userStoryModel.stories.elementAt(activeStoryIndex),
              );
            }),
          ),
        );
      }).toList(),
    );
  }

  // ignore: todo
  // TODO move this to StoryWatching
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
}

class SingleProgressBar extends StatefulWidget {
  final VoidCallback onFinishWatching;
  final bool isActiveStory;
  final StoryModel storyModel;
  const SingleProgressBar({
    super.key,
    required this.onFinishWatching,
    this.isActiveStory = false,
    required this.storyModel,
  });

  @override
  State<SingleProgressBar> createState() => _SingleProgressBarState();
}

class _SingleProgressBarState extends State<SingleProgressBar> {
  double watchingValue = 0;
  Timer? watchingTimer;

  @override
  void initState() {
    super.initState();
    if (widget.isActiveStory) {
      startWatching();
    }
  }

  @override
  void didUpdateWidget(covariant SingleProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isActiveStory) {
      startWatching();
    }
  }

  void startWatching() {
    watchingTimer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        if (watchingValue >= 1) {
          watchingValue = 1;
          timer.cancel();
          widget.onFinishWatching();
        } else {
          // ignore: todo
          // TODO: if video make it longer by increase by 0.005
          watchingValue = watchingValue + 0.01;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          watchingValue = 1;
        });
      },
      child: LinearProgressIndicator(
        value: watchingValue,
        backgroundColor: Colors.white.withAlpha(150),
        color: Colors.white,
        minHeight: 3,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    if (watchingTimer != null) {
      watchingTimer!.cancel();
    }
  }
}
