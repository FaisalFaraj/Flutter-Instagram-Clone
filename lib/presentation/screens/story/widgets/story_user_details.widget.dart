import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/user/user.model.dart';
import 'package:screentasia/screentasia.dart';

class StoryUserDetailsWidget extends StatelessWidget {
  final UserModel userModel;
  final String? heroTag;
  const StoryUserDetailsWidget(
      {super.key, required this.userModel, this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40.w,
                height: 40.h,
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
              SizedBox(
                width: 10.w,
              ),
              Text(
                userModel.username,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                '3h',
                style: TextStyle(
                  fontSize: 16.sp,
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
