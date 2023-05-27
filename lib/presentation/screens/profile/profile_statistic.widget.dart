import 'package:flutter/material.dart';

class ProfileStatisticWidget extends StatelessWidget {
  final String number;
  final String title;
  const ProfileStatisticWidget(
      {super.key, required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: currentTheme.colorScheme.onPrimary),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 13, color: currentTheme.colorScheme.onPrimary),
        ),
      ],
    );
  }
}
