import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_experiment/cat_store/cat_controller.dart';

class CatDetailScreen extends StatelessWidget {
  final catController = Get.find<CatController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cat Detail"),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            height: 300,
            child: Image.network(catController.catPhoto.value.url),
          ),
          RaisedButton(
            child: Text("Get new Image"),
            onPressed: () => catController.getImage(),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Image listen to chances"),
          GetX<CatController>(
            builder: (controller) {
              return Container(
                  height: 200,
                  child: Image.network(controller.catPhoto.value.url));
            },
          )
        ],
      )),
    );
  }
}
