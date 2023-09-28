import 'package:get/get.dart';
import 'package:task_app/core/assets/constant.dart';

class ProfileController extends GetxController {
  final isSpecialistTab = false.obs;
  List<Storyimage> storyimages = [
    Storyimage(kJpgImage2, "Trip"),
    Storyimage(kJpgImage3, "Travel"),
    Storyimage(kJpgImage4, "Views"),
    Storyimage(kJpgImage5, "Window"),
  ];
}

class Storyimage {
  final String image;
  final String name;
  Storyimage(this.image, this.name);
}
