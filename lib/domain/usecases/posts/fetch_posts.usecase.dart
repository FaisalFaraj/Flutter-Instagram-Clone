import 'package:flutter/foundation.dart';
import 'package:flutter_instagram_clone/data/models/post/post.model.dart';
import 'package:flutter_instagram_clone/data/repositories/posts.repository.dart';

class FetchPostsUseCase {
  final PostsRepository _postsRepository;

  FetchPostsUseCase(this._postsRepository);

  Future<List<PostModel>> fetchAllPosts() async {
    List<PostModel> result = [];
    try {
      result = await _postsRepository.getAll();
    } catch (e) {
      if (kDebugMode) {
        print(
            'live is too short to catch an error!, anyway there is the error $e');
      }
    }
    return result;
  }
}
