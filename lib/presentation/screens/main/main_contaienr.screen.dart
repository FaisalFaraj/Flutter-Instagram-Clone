import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/user/user.model.dart';
import 'package:flutter_instagram_clone/presentation/screens/feed/feed.screen.dart';
import 'package:flutter_instagram_clone/presentation/screens/main/bottom_navigation_bar.widget.dart';
import 'package:flutter_instagram_clone/presentation/screens/profile/profile.screen.dart';
import 'package:flutter_instagram_clone/presentation/screens/reels/reels.screen.dart';
import 'package:flutter_instagram_clone/presentation/viewmodel/user.viewmodel.dart';
import 'package:provider/provider.dart';

import '../../../core/intl/app_localizations.dart';

class MainContainerScreen extends StatefulWidget {
  const MainContainerScreen({super.key});

  @override
  State<MainContainerScreen> createState() => _MainContainerScreenState();
}

class _MainContainerScreenState extends State<MainContainerScreen> {
  // Logged User
  late UserModel loggedUser;

  @override
  void initState() {
    super.initState();
    // Mock logged User
    loggedUser =
        Provider.of<UsersViewModel>(context, listen: false).usersList.first;
  }

  var activePageIndex = 0;
  List get pages => [
        const FeedScreen(),
        const ReelsScreen(),

        Center(
          child: Text(
              '${AppLocalizations.of(context)!.new_post_screen} ${AppLocalizations.of(context)!.soon}'),
        ),
        Center(
          child: Text(
              '${AppLocalizations.of(context)!.notifications_screen} ${AppLocalizations.of(context)!.soon}'),
        ),
        // const SearchWidget(),

        ProfileScreen(
          userModel: loggedUser,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return Scaffold(
      body: Container(
        color: currentTheme.colorScheme.primary,
        child: pages[activePageIndex],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        userModel: loggedUser,
        currentIndex: activePageIndex,
        onTap: (int value) {
          setState(() {
            activePageIndex = value;
          });
        },
      ),
    );
  }
}
