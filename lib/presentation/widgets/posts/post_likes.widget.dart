import 'package:flutter/material.dart';
import 'package:screentasia/screentasia.dart';

import '../../../core/intl/app_localizations.dart';

class PostLikesWidget extends StatelessWidget {
  const PostLikesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: currentTheme.colorScheme.onSecondary),
          children: [
            TextSpan(text: '${AppLocalizations.of(context)!.liked_by} '),
            const TextSpan(
              text: 'faisal_faraj',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ' ${AppLocalizations.of(context)!.and}'),
            TextSpan(
              text: ' 12 ${AppLocalizations.of(context)!.others}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
