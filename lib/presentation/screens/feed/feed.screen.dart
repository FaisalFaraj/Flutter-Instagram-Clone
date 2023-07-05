import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/presentation/screens/feed/posts.viewmodel.dart';
import 'package:flutter_instagram_clone/presentation/widgets/loading.widget.dart';
import 'package:flutter_instagram_clone/presentation/widgets/posts/post.widget.dart';
import 'package:flutter_instagram_clone/presentation/widgets/stories/stories.widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:screentasia/screentasia.dart';

import '../search/search.screen.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: currentTheme.colorScheme.primary,
        title: IconButton(
          onPressed: () {},
          icon: SizedBox(
            width: 3.w,
            height: 30.h,
            child: FaIcon(
              FontAwesomeIcons.instagram,
              color: currentTheme.colorScheme.onPrimary,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchWidget()));
            },
            icon: SizedBox(
              width: 20.w,
              child: FaIcon(
                FontAwesomeIcons.search,
                color: currentTheme.colorScheme.onPrimary,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SizedBox(
              width: 20.w,
              child: FaIcon(
                FontAwesomeIcons.facebookMessenger,
                color: currentTheme.colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 5.h,
            ),
            const StoriesWidget(),
            SizedBox(
              height: 5.h,
            ),
            Consumer<PostsViewModel>(
              builder: (context, provider, _) {
                if (provider.isLoading) {
                  return const Center(child: LoadingWidget());
                }

                return ListView.separated(
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return PostWidget(postModel: provider.postsList[index]);
                  },
                  itemCount: provider.postsList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 10.h,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
