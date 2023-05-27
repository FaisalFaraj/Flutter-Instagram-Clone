import 'package:flutter_instagram_clone/data/models/story/story.model.dart';
import 'package:flutter_instagram_clone/data/models/story/user_story.model.dart';
import 'package:flutter_instagram_clone/data/models/user/user.model.dart';
import 'package:flutter_instagram_clone/data/repositories/crud_interface.repository.dart';
import 'package:flutter_instagram_clone/data/services/stories.service.dart';

class UsersStoriesRepository implements ICRUDRepository<UserStoryModel> {
  // we will initialize the service in the constructor to use it later in the testing phase as a dependency injection
  final StoriesService storiesService;

  const UsersStoriesRepository(this.storiesService);

  @override
  Future<bool> create(UserStoryModel record) {
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(UserStoryModel record) {
    throw UnimplementedError();
  }

  @override
  Future<List<UserStoryModel>> getAll() async {
    var data = await storiesService.fetchAllStories();
    return data.map((e) {
      var storiesList =
          (e['stories'] as List).map((s) => StoryModel.fromJson(s)).toList();
      return UserStoryModel(UserModel.fromJson(e['story_by']), storiesList);
    }).toList();
  }

  @override
  Future<UserStoryModel> getRecordById(String id) {
    throw UnimplementedError();
  }

  @override
  Future<bool> update(UserStoryModel record) {
    throw UnimplementedError();
  }
}
