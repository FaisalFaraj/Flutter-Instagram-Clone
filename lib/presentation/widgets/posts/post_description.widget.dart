import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/user/user.model.dart';
import 'package:screentasia/screentasia.dart';

class PostDescriptionWidget extends StatelessWidget {
  final String description;
  final UserModel addBy;

  const PostDescriptionWidget(
      {super.key, required this.description, required this.addBy});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15.sp,
          ),
          children: [
            // username
            TextSpan(
              text: '${addBy.username} ',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            // content
            TextSpan(text: description),
            // hashtags
            const TextSpan(
              style: TextStyle(color: Color.fromARGB(255, 3, 105, 189)),
              children: [
                TextSpan(text: '#horse '),
                TextSpan(text: '#frankfurt '),
                TextSpan(text: '#shotbyiphone14 '),
                TextSpan(text: '#iphone14 '),
              ],
            )
          ],
        ),
      ),
    );
  }
}
