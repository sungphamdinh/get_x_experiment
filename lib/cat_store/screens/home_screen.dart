import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_experiment/cat_store/cat_controller.dart';
import 'package:get_x_experiment/cat_store/screens/cat_detail_screen.dart';

class CatScreen extends StatelessWidget {
  final catController = Get.put(CatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cat Store"),
      ),
      body: Center(
          child: Column(
        children: [
          RaisedButton(
            child: Text("Get new Image"),
            onPressed: () {
              catController.getImage();
            },
          ),
          Obx(() {
            if (catController.catPhoto.value.id != '') {
              final photo = catController.catPhoto;
              return GestureDetector(
                onTap: () => Get.to(CatDetailScreen()),
                child: Column(children: [
                  Image.network(photo.value.url),
                ]),
              );
            } else {
              return Text("No photo");
            }
          }),
        ],
      )),
    );
  }
}
