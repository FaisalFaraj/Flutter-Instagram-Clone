import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
        child: Stack(
          children: [
            const SizedBox(
              width: 700,
              height: 370,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: SizedBox(
                  width: 700,
                  height: 350,
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
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 50,
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
                                    height: 20,
                                    width: 20,
                                    child: FaIcon(FontAwesomeIcons.heart,
                                        color: currentTheme
                                            .colorScheme.onPrimary)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '1223434',
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 9,
                                      color:
                                          currentTheme.colorScheme.onPrimary),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: FaIcon(FontAwesomeIcons.comment,
                                      color:
                                          currentTheme.colorScheme.onPrimary),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '1223434',
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 9,
                                      color:
                                          currentTheme.colorScheme.onPrimary),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(Icons.more_vert,
                                size: 30,
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
