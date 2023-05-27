import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/presentation/screens/feed/posts.viewmodel.dart';
import 'package:flutter_instagram_clone/presentation/screens/main/main_contaienr.screen.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/stories.viewmodel.dart';
import 'package:flutter_instagram_clone/presentation/viewmodel/user.viewmodel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initApp();
  }

  Future<void> initApp() async {
    // load users data
    await Provider.of<UsersViewModel>(context, listen: false).loadUsers();
    // load stories data
    if (mounted) {
      await Provider.of<StoriesViewModel>(context, listen: false)
          .fetchStories();
    }
    // load posts data
    if (mounted) {
      await Provider.of<PostsViewModel>(context, listen: false).fetchPosts();
    }

    // fake waiting time
    await Future.delayed(const Duration(seconds: 1));
    // open home page
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const MainContainerScreen()));
  }

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: FaIcon(
          FontAwesomeIcons.instagram,
          size: 100,
          color: currentTheme.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
