import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/intl/app_localizations.dart';

class PostCommentsWidget extends StatelessWidget {
  const PostCommentsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Text(
        '${AppLocalizations.of(context)!.view_all} 14 ${AppLocalizations.of(context)!.comments}',
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
