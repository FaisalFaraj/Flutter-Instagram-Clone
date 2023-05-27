import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../core/intl/app_localizations.dart';

class AddStoryWidget extends StatelessWidget {
  const AddStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 8),
      child: Stack(
        children: [
          Container(
            color: currentTheme.colorScheme.primary,
            height: 105,
            width: 85,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: DottedBorder(
              color: Colors.grey,
              strokeWidth: 1,
              dashPattern: const [
                5,
                5,
              ],
              child: Container(
                color: currentTheme.colorScheme.primary,
                height: 90,
                width: 85,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 20, start: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 1.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DottedBorder(
                        color: Colors.grey,
                        strokeWidth: 1,
                        dashPattern: const [
                          5,
                          5,
                        ],
                        child: const SizedBox(
                            height: 25,
                            width: 30,
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 14,
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 25,
                        width: 55,
                        child: Text(
                          AppLocalizations.of(context)!.post_your_story,
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
