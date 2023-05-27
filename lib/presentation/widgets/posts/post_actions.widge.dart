import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  width: 22,
                  child: FaIcon(FontAwesomeIcons.heart),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  width: 20,
                  child: FaIcon(FontAwesomeIcons.comment),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  width: 20,
                  child: FaIcon(FontAwesomeIcons.paperPlane),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              width: 20,
              child: FaIcon(FontAwesomeIcons.save),
            ),
          )
        ],
      ),
    );
  }
}
