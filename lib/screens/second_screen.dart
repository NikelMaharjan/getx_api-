import 'package:api_getx/models/title_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  titleModel title = titleModel();

    getArguments() {
      final arguments = Get.arguments;
      title = arguments[0];
      print('data is === ${title.title}');
    }

  @override
  Widget build(BuildContext context) {

    getArguments();

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Center(
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: "https://static.thenounproject.com/png/136700-200.png",
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Text(title.body!),
          ],
        ),
      ),
    );
  }
}
