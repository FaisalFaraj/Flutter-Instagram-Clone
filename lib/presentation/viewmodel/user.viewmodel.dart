import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/user/user.model.dart';
import 'package:flutter_instagram_clone/data/repositories/users.repository.dart';
import 'package:flutter_instagram_clone/data/services/users.service.dart';
import 'package:flutter_instagram_clone/domain/usecases/users/fetch_users.usecase.dart';

class UsersViewModel extends ChangeNotifier {
  List<UserModel> usersList = [];
  FetchUsersUseCase fetchUsersUseCase =
      FetchUsersUseCase(UsersRepository(UserService()));
  bool isLoading = false;

  Future<void> loadUsers() async {
    isLoading = true;
    var result = await fetchUsersUseCase.fetchAllUsers();
    usersList = result;
    isLoading = false;
    notifyListeners();
  }

  UserModel getLoadedUserById(int id) {
    return usersList.firstWhere((element) => element.id == id);
  }
}
