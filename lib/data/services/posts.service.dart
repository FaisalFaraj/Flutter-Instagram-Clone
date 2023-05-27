import 'package:flutter_instagram_clone/data/services/json_reader.service.dart';

class PostsService {
  JSONReaderService jsonReaderService = JSONReaderService();

  //fetch stories data from data source
  Future<List> fetchAllPosts() async {
    // fake waiting time
    await Future.delayed(const Duration(seconds: 1));

    return await jsonReaderService.readJsonFile('posts');
  }
}
