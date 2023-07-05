import 'package:flutter/material.dart';
import 'package:screentasia/screentasia.dart';

class BottomNavigationBarItemWidget extends StatelessWidget {
  final VoidCallback onTap;
  final Widget activeIcon;
  final Widget unActiveIcon;
  final bool isActive;
  const BottomNavigationBarItemWidget({
    super.key,
    required this.onTap,
    this.isActive = false,
    required this.activeIcon,
    required this.unActiveIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
        child: isActive
            ? Container(child: activeIcon)
            : Container(child: unActiveIcon),
      ),
    );
  }
}
