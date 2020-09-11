import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_x_experiment/cat_store/cat_photo.dart';

// API : https://docs.thecatapi.com/api-reference/images/images-search

class CatController extends GetxController {
  static const API_KEY = "ee64cb1f-7e93-4064-999b-2ee6de6d14ee";
  final catPhoto = CatPhoto('').obs;

  Future<void> getImage() async {
    try {
      Response response =
          await Dio().get("https://api.thecatapi.com/v1/images/search");
      final photo = CatPhoto.fromJson(response.data[0]);
      catPhoto(photo);
    } catch (error) {
      print(error.toString());
    }
  }
}
