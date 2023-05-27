import 'package:flutter_instagram_clone/data/models/post/post.model.dart';
import 'package:flutter_instagram_clone/data/repositories/crud_interface.repository.dart';
import 'package:flutter_instagram_clone/data/services/posts.service.dart';

class PostsRepository implements ICRUDRepository<PostModel> {
  // we will initialize the service in the constructor to use it later in the testing phase as a dependency injection
  final PostsService postsService;

  const PostsRepository(this.postsService);

  @override
  Future<bool> create(PostModel record) {
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(PostModel record) {
    throw UnimplementedError();
  }

  @override
  Future<List<PostModel>> getAll() async {
    var data = await postsService.fetchAllPosts();
    return data.map((e) => PostModel.fromJson(e)).toList();
  }

  @override
  Future<PostModel> getRecordById(String id) {
    throw UnimplementedError();
  }

  @override
  Future<bool> update(PostModel record) {
    throw UnimplementedError();
  }
}
