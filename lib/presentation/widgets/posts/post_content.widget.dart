import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:screentasia/screentasia.dart';

class PostContentWidget extends StatelessWidget {
  final String media;
  const PostContentWidget({super.key, required this.media});

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    return GestureDetector(
      onDoubleTap: () {
        // ignore: todo
        // TODO: show like effect
      },
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5).r,
        child: Stack(
          children: [
            SizedBox(
              width: 700.w,
              height: 370.h,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(35).r,
                child: SizedBox(
                  width: 700.w,
                  height: 350.h,
                  child: Image.network(
                    media,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
              bottom: -3,
              left: 50,
              right: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15).r,
                child: Container(
                  height: 50.w,
                  color: currentTheme.colorScheme.primary,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: 20.h,
                                    width: 20.w,
                                    child: FaIcon(FontAwesomeIcons.heart,
                                        color: currentTheme
                                            .colorScheme.onPrimary)),
                                SizedBox(
                                  height: 5.w,
                                ),
                                Text(
                                  '1223434',
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 9.sp,
                                      color:
                                          currentTheme.colorScheme.onPrimary),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20.h,
                                  width: 20.w,
                                  child: FaIcon(FontAwesomeIcons.comment,
                                      color:
                                          currentTheme.colorScheme.onPrimary),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '1223434',
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 9.sp,
                                      color:
                                          currentTheme.colorScheme.onPrimary),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(Icons.more_vert,
                                size: 30.sp,
                                color: currentTheme.colorScheme.onPrimary),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
