import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/post/post.model.dart';
import 'package:flutter_instagram_clone/data/repositories/posts.repository.dart';
import 'package:flutter_instagram_clone/data/services/posts.service.dart';
import 'package:flutter_instagram_clone/domain/usecases/posts/fetch_posts.usecase.dart';
import 'package:flutter_instagram_clone/domain/usecases/posts/fetch_posts_by_user.usercase.dart';

class PostsViewModel extends ChangeNotifier {
  FetchPostsUseCase fetchPostsUseCase =
      FetchPostsUseCase(PostsRepository(PostsService()));
  FetchPostsByUserUseCase fetchPostsByUserUseCase =
      FetchPostsByUserUseCase(PostsRepository(PostsService()));
  List<PostModel> postsList = [];
  bool isLoading = false;

  Future<void> fetchPosts() async {
    isLoading = true;
    List<PostModel> result = await fetchPostsUseCase.fetchAllPosts();
    postsList = result;
    isLoading = false;
    notifyListeners();
  }

  Future<List<PostModel>> getPostsByUserId(int id) async {
    return await fetchPostsByUserUseCase.fetchUserPosts(id);
  }
}
