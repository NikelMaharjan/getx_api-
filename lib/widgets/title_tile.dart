import 'package:api_getx/models/title_model.dart';
import 'package:api_getx/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleTile extends StatelessWidget {
  final titleModel title;

  TitleTile(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          title: Text(title.title!),
          subtitle: Text(title.body!),
          onTap: () {
            Get.toNamed("/second", arguments: [title]);
          },
        ),
      ),
    );
  }
}
