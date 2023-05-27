import 'package:flutter_instagram_clone/data/services/json_reader.service.dart';

class UserService {
  JSONReaderService jsonReaderService = JSONReaderService();

  //fetch users data from data source
  Future<List> fetchAllUsers() async {
    // fake waiting time
    await Future.delayed(const Duration(seconds: 1));
    return await jsonReaderService.readJsonFile('users');
  }
}
