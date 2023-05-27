import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/user/user.model.dart';
import 'package:flutter_instagram_clone/presentation/screens/profile/profile_statistic.widget.dart';
import 'package:flutter_instagram_clone/presentation/widgets/user/user_avatar.widget.dart';

import '../../../core/intl/app_localizations.dart';

// Profile header contains Profile Avatar and Profile Statistics
class ProfileHeaderWidget extends StatelessWidget {
  final UserModel userModel;
  const ProfileHeaderWidget({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //  Profile Avatar
          UserAvatarWidget(
            userModel: userModel,
            width: 80,
            height: 80,
          ),
          const SizedBox(
            width: 60,
          ),
          // Statistics
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileStatisticWidget(
                    number: '158', title: AppLocalizations.of(context)!.posts),
                ProfileStatisticWidget(
                    number: '273',
                    title: AppLocalizations.of(context)!.followers),
                ProfileStatisticWidget(
                    number: '210',
                    title: AppLocalizations.of(context)!.following),
              ],
            ),
          )
        ],
      ),
    );
  }
}
