import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/presentation/widgets/loading.widget.dart';
import 'package:flutter_instagram_clone/presentation/widgets/stories/avatar_story_widget.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/stories.viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:screentasia/screentasia.dart';

import 'add_story_widget.dart';

class StoriesWidget extends StatefulWidget {
  const StoriesWidget({super.key});

  @override
  State<StoriesWidget> createState() => _StoriesWidgetState();
}

class _StoriesWidgetState extends State<StoriesWidget> {
  // @override
  // void initState() {
  //   super.initState();
  //   Provider.of<StoriesViewModel>(context, listen: false).fetchStories();
  // }

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return Container(
      padding: EdgeInsets.only(left: 10.w),
      height: 130.h,
      child: Consumer<StoriesViewModel>(
        builder: (context, provider, _) {
          if (provider.isLoading) {
            return const Center(child: LoadingWidget());
          }

          return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: provider.usersStoriesList.length + 1,
            itemBuilder: (context, i) {
              if (i == 0) {
                return const AddStoryWidget();
              }
              int index = i - 1;

              var userStory = provider.usersStoriesList[index];

              return AvatarStoryWidget(userStoryModel: userStory);
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 10.w,
              );
            },
          );
        },
      ),
    );
  }
}
