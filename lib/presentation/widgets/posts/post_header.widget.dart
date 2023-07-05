import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/user/user.model.dart';
import 'package:flutter_instagram_clone/presentation/screens/profile/profile.screen.dart';
import 'package:flutter_instagram_clone/presentation/widgets/user/user_avatar.widget.dart';
import 'package:screentasia/screentasia.dart';

class PostHeaderWidget extends StatelessWidget {
  final UserModel addBy;
  final String? postLocation;
  const PostHeaderWidget(
      {super.key, required this.addBy, required this.postLocation});

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return Container(
      padding: EdgeInsetsDirectional.only(start: 20.w, end: 20.w, top: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              UserAvatarWidget(
                width: 35.h.ap(
                    adaptivePercentage:
                        AdaptivePercentage(desktop: 300, tablet: 200)),
                height: 45.w,
                userModel: addBy,
              ),
              SizedBox(
                width: 10.w,
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
                        fontSize: 14.sp,
                        color: currentTheme.colorScheme.onSecondary,
                      ),
                    ),
                    if (postLocation != null)
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.location_on_outlined,
                                size: 14.sp,
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(
                              text: postLocation!,
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.grey),
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
                size: 25.sp,
                color: currentTheme.colorScheme.onSecondary,
              ),
              SizedBox(
                width: 5.w,
              ),
              Icon(
                Icons.bookmark_outline_outlined,
                size: 25.sp,
                color: currentTheme.colorScheme.onSecondary,
              )
            ],
          )
        ],
      ),
    );
  }
}
