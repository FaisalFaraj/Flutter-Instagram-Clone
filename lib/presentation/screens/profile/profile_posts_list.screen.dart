import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/post/post.model.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/posts_list.widget.dart';

import '../../../core/intl/app_localizations.dart';

class ProfilePostsListScreen extends StatelessWidget {
  final List<PostModel> posts;
  const ProfilePostsListScreen({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: currentTheme.colorScheme.primary,
        title: Text(
          AppLocalizations.of(context)!.posts,
          style: TextStyle(color: currentTheme.colorScheme.onPrimary),
        ),
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: currentTheme.colorScheme.onPrimary),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: PostsListWidget(
        posts: posts,
      ),
    );
  }
}
