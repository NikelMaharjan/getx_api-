import 'package:api_getx/controller/title_controller.dart';
import 'package:api_getx/widgets/title_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final TitleController titleController = Get.put(TitleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Api"),
          centerTitle: true,
          elevation: 2,
        ),
        body: GetBuilder<TitleController>(
          builder: (_) {
            if(_.isLoading){
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            else {
              return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return TitleTile(_.titlelist[index]);
                  },
                  itemCount: _.titlelist.length);
            } },
        ));
  }

 /* Widget buildEachItem(titleModel data) {
    print("i am inside");
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          title: Text(data.title!),
          subtitle: Text(data.body!),
          onTap: () {
            Get.to(SecondScreen(data));
          },
        ),
      ),
    );
  }*/
}
