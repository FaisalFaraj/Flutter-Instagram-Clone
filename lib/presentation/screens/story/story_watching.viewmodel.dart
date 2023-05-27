import 'package:flutter/material.dart';

class StoryWatchingViewModel extends ChangeNotifier {
  int lastWatchedStoryId = 0;
  int activeStoryIndex = 0;

  void settActiveStoryIndex(int value) {
    activeStoryIndex = value;
    notifyListeners();
  }

  void setLastWatchedStoryId(int value) {
    lastWatchedStoryId = value;
    notifyListeners();
  }

  // ignore: todo
  // TODO: impl this method
  void moveToTheNextStory() {
    // // lastWatchedStoryId = 1;
    // activeStoryIndex++;
    // notifyListeners();
  }

// ignore: todo
// TODO: impl this method
  void moveToTheNextUser() {}
}
