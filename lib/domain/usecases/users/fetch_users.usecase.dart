import 'package:flutter/foundation.dart';
import 'package:flutter_instagram_clone/data/models/user/user.model.dart';
import 'package:flutter_instagram_clone/data/repositories/users.repository.dart';

class FetchUsersUseCase {
  final UsersRepository _usersRepository;

  FetchUsersUseCase(this._usersRepository);

  Future<List<UserModel>> fetchAllUsers() async {
    List<UserModel> result = [];
    try {
      result = await _usersRepository.getAll();
    } catch (e) {
      if (kDebugMode) {
        print(
            'live is too short to catch an error!, anyway there is the error $e');
      }
    }
    return result;
  }
}
