// profiles actions =  edit profile or follow and message buttons
import 'package:flutter/material.dart';

import '../../../core/intl/app_localizations.dart';

class ProfileActionsWidget extends StatelessWidget {
  final bool isLoggedUser;

  const ProfileActionsWidget({super.key, required this.isLoggedUser});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: isLoggedUser
          ? buildActionsForLoggedUser(context)
          : buildActionsForOtherUsers(context),
    );
  }

  Widget buildActionsForOtherUsers(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: MaterialButton(
            color: Colors.blue,
            textColor: currentTheme.colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 0,
            minWidth: double.infinity,
            height: 35,
            // style: ButtonStyle(minimumSize: Size(double.infinity, 100)),
            onPressed: () {},
            child: Text(
              AppLocalizations.of(context)!.follow,
              style: TextStyle(color: currentTheme.colorScheme.onPrimary),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: MaterialButton(
            color: const Color.fromARGB(255, 231, 231, 231),
            textColor: currentTheme.colorScheme.onPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 35,
            elevation: 0,
            minWidth: double.infinity,
            // style: ButtonStyle(minimumSize: Size(double.infinity, 100)),
            onPressed: () {},
            child: Text(AppLocalizations.of(context)!.message,
                style: TextStyle(color: currentTheme.colorScheme.primary)),
          ),
        ),
      ],
    );
  }

  Widget buildActionsForLoggedUser(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return MaterialButton(
      color: const Color.fromARGB(255, 231, 231, 231),
      textColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 35,
      elevation: 0,
      minWidth: double.infinity,
      // style: ButtonStyle(minimumSize: Size(double.infinity, 100)),
      onPressed: () {},
      child: Text(AppLocalizations.of(context)!.edit_profile),
    );
  }
}
