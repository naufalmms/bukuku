import 'package:flutter/material.dart';
import 'package:project_ui_bukuku/components/popular_item.dart';
import 'package:project_ui_bukuku/components/topic_item.dart';
import 'package:project_ui_bukuku/datas/data_populars.dart';
import 'package:project_ui_bukuku/datas/data_topic.dart';
import 'package:project_ui_bukuku/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 24, bottom: 12),
                child: Text(
                  "Topics",
                  style: medium18.copyWith(color: text),
                ),
              ),
              SizedBox(
                height: 180,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  itemBuilder: (context, index) =>
                      TopicItem(topic: dataTopic[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 16,
                  ),
                  itemCount: dataTopic.length,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 24, bottom: 12),
                child: Text(
                  "Most Popular",
                  style: medium18.copyWith(color: text),
                ),
              ),
              ...dataPopulars.map(
                (Book) => PopularItem(book: Book),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
