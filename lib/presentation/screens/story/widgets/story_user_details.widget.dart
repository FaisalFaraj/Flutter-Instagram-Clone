import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/user/user.model.dart';

class StoryUserDetailsWidget extends StatelessWidget {
  final UserModel userModel;
  final String? heroTag;
  const StoryUserDetailsWidget(
      {super.key, required this.userModel, this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Hero(
                  tag: heroTag ?? '',
                  child: Image.network(userModel.profileImage),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                userModel.username,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                '3h',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          GestureDetector(
            child: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
