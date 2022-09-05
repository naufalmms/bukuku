// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:project_ui_bukuku/models/topics.dart';
import 'package:project_ui_bukuku/theme.dart';

class TopicItem extends StatelessWidget {
  final Topics topic;
  const TopicItem({
    Key? key,
    required this.topic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 138,
      height: 180,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: topic.color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.6),
              borderRadius: BorderRadius.circular(23),
            ),
            child: Icon(
              topic.icon,
              color: text,
              size: 24,
            ),
          ),
          const Spacer(),
          Text(
            topic.title,
            style: medium14.copyWith(color: text),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "${topic.totalBook} books",
            style: regular10.copyWith(
              color: text.withOpacity(.7),
            ),
          ),
        ],
      ),
    );
  }
}
