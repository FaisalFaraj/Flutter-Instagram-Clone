import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/data/models/user/user.model.dart';
import 'package:screentasia/screentasia.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final UserModel userModel;
  final int currentIndex;
  final ValueChanged<int> onTap;
  const BottomNavigationBarWidget({
    super.key,
    required this.onTap,
    this.currentIndex = 0,
    required this.userModel,
  });

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return BottomNavigationBar(
      backgroundColor: currentTheme.colorScheme.primary,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: widget.currentIndex,
      onTap: (i) {
        setState(
          () {
            widget.onTap(i);
          },
        );
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home_outlined,
              color: currentTheme.colorScheme.onPrimary,
            ),
            activeIcon: Icon(
              Icons.home_filled,
              color: currentTheme.colorScheme.onPrimary,
            )),
        BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.video_library_outlined,
              color: currentTheme.colorScheme.onPrimary,
            ),
            activeIcon: Icon(
              Icons.video_library,
              color: currentTheme.colorScheme.onPrimary,
            )),
        BottomNavigationBarItem(
          label: '',
          icon: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              height: 40.h,
              width: 40.w,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.purple, Colors.pink, Colors.orange],
              )),
              child: const Center(
                child: Icon(
                  Icons.add_outlined,
                  color: Colors.white,
                  // size: 20.sp,
                ),
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.notifications_outlined,
              color: currentTheme.colorScheme.onPrimary,
            ),
            activeIcon: Icon(
              Icons.notifications,
              color: currentTheme.colorScheme.onPrimary,
            )),
        BottomNavigationBarItem(
            label: '',
            icon: Container(
              padding: EdgeInsets.all(2).r,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15).r,
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  width: 30.w,
                  height: 30.h,
                  child: Image.network(
                    widget.userModel.profileImage,
                  ),
                ),
              ),
            ),
            activeIcon: Container(
              padding: EdgeInsets.all(1).r,
              decoration: BoxDecoration(
                border: Border.all(width: 1.w),
                borderRadius: BorderRadius.circular(15).r,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15).r,
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  width: 30.w,
                  height: 30.h,
                  child: Image.network(
                    widget.userModel.profileImage,
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
