import 'package:flutter_instagram_clone/data/models/user/user.model.dart';
import 'package:flutter_instagram_clone/data/repositories/crud_interface.repository.dart';
import 'package:flutter_instagram_clone/data/services/users.service.dart';

class UsersRepository implements ICRUDRepository<UserModel> {
  // we will initialize the service in the constructor to use it later in the testing phase as a dependency injection
  final UserService userService;

  const UsersRepository(this.userService);

  @override
  Future<bool> create(UserModel record) {
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(UserModel record) {
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> getAll() async {
    var data = await userService.fetchAllUsers();
    return data.map((e) => UserModel.fromJson(e)).toList();
  }

  @override
  Future<UserModel> getRecordById(String id) {
    throw UnimplementedError();
  }

  @override
  Future<bool> update(UserModel record) {
    throw UnimplementedError();
  }
}
