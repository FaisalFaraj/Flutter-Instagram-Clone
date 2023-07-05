// profile widget = name, bio and link
import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/user/user.model.dart';
import 'package:screentasia/screentasia.dart';

class ProfileInfoWidget extends StatelessWidget {
  final UserModel userModel;
  const ProfileInfoWidget({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display name or username
          Text(userModel.displayName,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: currentTheme.colorScheme.onPrimary)),
          // bio
          SizedBox(
            height: 5.h,
          ),
          Text(
            userModel.bio ?? '',
            style: TextStyle(
                fontSize: 12, color: currentTheme.colorScheme.onPrimary),
          ),
          SizedBox(
            height: 5.h,
          ),
          // link
          Text(
            userModel.link ?? '',
            style:
                TextStyle(fontSize: 12, color: Color.fromARGB(255, 0, 72, 130)),
          ),
        ],
      ),
    );
  }
}
