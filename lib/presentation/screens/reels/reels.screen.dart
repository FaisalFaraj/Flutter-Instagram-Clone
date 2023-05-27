import 'package:flutter/material.dart';

import '../../../core/intl/app_localizations.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          '${AppLocalizations.of(context)!.reels_screen} ${AppLocalizations.of(context)!.soon}',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
