import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/presentation/screens/feed/posts.viewmodel.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/posts_grid.widget.dart';
import 'package:provider/provider.dart';
import 'package:screentasia/screentasia.dart';

import '../../../core/intl/app_localizations.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: currentTheme.colorScheme.primary,
        title: Text(
          AppLocalizations.of(context)!.search,
          style: TextStyle(color: currentTheme.colorScheme.onPrimary),
        ),
        leading: BackButton(
          color: currentTheme.colorScheme.onPrimary, // <-- SEE HERE
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 35.h,
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: currentTheme.colorScheme.secondary,
                  borderRadius: BorderRadius.circular(5).r,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 18.sp,
                    ),
                    fillColor: Colors.white,
                    hintText: AppLocalizations.of(context)!.search,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                    ),
                    focusColor: currentTheme.colorScheme.onPrimary,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Consumer<PostsViewModel>(
                builder: (context, provider, _) {
                  return PostsGridWidget(posts: provider.postsList);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
