import 'dart:io';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import 'package:task_app/core/utils/app_colors.dart';

class UploadImageController extends GetxController {
  File? image;
  final ImagePicker images = ImagePicker();
  Future getImage() async {
    var Image = await images.pickImage(source: ImageSource.gallery);
    image = File(Image!.path);
    ImageData.imageList.add(PortfolioModel(image: image));
    Get.snackbar('Sucessfull', 'Image uploaded',
        backgroundColor: AppColors.green400,
        duration: Duration(seconds: 1),
        snackPosition: SnackPosition.TOP);
    update();
  }
}

class PortfolioModel {
  dynamic image;
  PortfolioModel({this.image});
}

class ImageData {
  static List<PortfolioModel> imageList = [];
}
