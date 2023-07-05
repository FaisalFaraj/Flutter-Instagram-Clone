import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:screentasia/screentasia.dart';

class PostActionsWidget extends StatefulWidget {
  const PostActionsWidget({super.key});

  @override
  State<PostActionsWidget> createState() => _PostActionsWidgetState();
}

class _PostActionsWidgetState extends State<PostActionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
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
                  child: FaIcon(FontAwesomeIcons.comment),
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
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              width: 20.w,
              child: const FaIcon(FontAwesomeIcons.save),
            ),
          )
        ],
      ),
    );
  }
}
