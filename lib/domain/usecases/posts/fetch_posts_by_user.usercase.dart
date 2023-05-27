import 'package:flutter/foundation.dart';
import 'package:flutter_instagram_clone/data/models/post/post.model.dart';
import 'package:flutter_instagram_clone/data/repositories/posts.repository.dart';

class FetchPostsByUserUseCase {
  final PostsRepository _postsRepository;

  FetchPostsByUserUseCase(this._postsRepository);

  Future<List<PostModel>> fetchUserPosts(int id) async {
    List<PostModel> result = [];
    try {
      var postsList = await _postsRepository.getAll();

      result = postsList.where((element) => element.addBy == id).toList();
    } catch (e) {
      if (kDebugMode) {
        print(
            'live is too short to catch an error!, anyway there is the error $e');
      }
    }

    return result;
  }
}
