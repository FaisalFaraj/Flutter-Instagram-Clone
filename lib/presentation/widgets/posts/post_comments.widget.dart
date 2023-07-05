import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/intl/app_localizations.dart';
import 'package:screentasia/screentasia.dart';

class PostCommentsWidget extends StatelessWidget {
  const PostCommentsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: Text(
        '${AppLocalizations.of(context)!.view_all} 14 ${AppLocalizations.of(context)!.comments}',
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
