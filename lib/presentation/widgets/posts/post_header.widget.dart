import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/user/user.model.dart';
import 'package:flutter_instagram_clone/presentation/screens/profile/profile.screen.dart';
import 'package:flutter_instagram_clone/presentation/widgets/user/user_avatar.widget.dart';

class PostHeaderWidget extends StatelessWidget {
  final UserModel addBy;
  final String? postLocation;
  const PostHeaderWidget(
      {super.key, required this.addBy, required this.postLocation});

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return Container(
      padding: const EdgeInsetsDirectional.only(start: 20, end: 20, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              UserAvatarWidget(
                width: 45,
                height: 45,
                userModel: addBy,
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(
                        userModel: addBy,
                      ),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      addBy.username,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: currentTheme.colorScheme.onSecondary,
                      ),
                    ),
                    if (postLocation != null)
                      RichText(
                        text: TextSpan(
                          children: [
                            const WidgetSpan(
                              child: Icon(
                                Icons.location_on_outlined,
                                size: 14,
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(
                              text: postLocation!,
                              style:
                                  const TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.send_outlined,
                size: 25,
                color: currentTheme.colorScheme.onSecondary,
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                Icons.bookmark_outline_outlined,
                size: 25,
                color: currentTheme.colorScheme.onSecondary,
              )
            ],
          )
        ],
      ),
    );
  }
}
