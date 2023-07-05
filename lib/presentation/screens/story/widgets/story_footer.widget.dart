import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:screentasia/screentasia.dart';

import '../../../../core/intl/app_localizations.dart';

class StoryFooterWidget extends StatefulWidget {
  const StoryFooterWidget({super.key});

  @override
  State<StoryFooterWidget> createState() => _StoryFooterWidgetState();
}

class _StoryFooterWidgetState extends State<StoryFooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 0,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(40).r,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: AppLocalizations.of(context)!.send_message,
                  hintStyle: const TextStyle(color: Colors.white),
                  focusColor: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          GestureDetector(
            onTap: () {},
            child: SizedBox(
              width: 22.w,
              child: FaIcon(FontAwesomeIcons.heart),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          GestureDetector(
            onTap: () {},
            child: SizedBox(
              width: 20.w,
              child: FaIcon(FontAwesomeIcons.paperPlane),
            ),
          ),
        ],
      ),
    );
  }
}
