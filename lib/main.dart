import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/utils/my_http_overrides.dart';
import 'package:flutter_instagram_clone/presentation/screens/feed/posts.viewmodel.dart';
import 'package:flutter_instagram_clone/presentation/screens/splash/splash.screen.dart';
import 'package:flutter_instagram_clone/presentation/viewmodel/user.viewmodel.dart';
import 'package:flutter_instagram_clone/presentation/screens/story/stories.viewmodel.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:screentasia/screentasia.dart';

import 'core/intl/app_localizations.dart';
import 'presentation/shared/themes.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StoriesViewModel()),
        ChangeNotifierProvider(create: (_) => PostsViewModel()),
        ChangeNotifierProvider(create: (_) => UsersViewModel()),
      ],
      child: ScreentasiaInit(
        builder: (context, child) => MaterialApp(
          title: 'Instagram Clone',
          debugShowCheckedModeBanner: false,
          theme: AppThemes.appThemeData['dark'],
          locale: const Locale('ar', ''),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('en', ''), Locale('ar', '')],
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
