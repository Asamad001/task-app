import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/modules/get_start/view/get_start_page.dart';
import 'package:task_app/modules/home/view/home_page.dart';
import 'package:task_app/modules/profile/view/profile_page.dart';
import 'package:task_app/modules/upload_image/view/upload_image_page.dart';

class NavigationController extends GetxController {
  int currentindex = 0;
  void ontap(int index) {
    currentindex = index;
    update();
  }

  final List<Widget> children = [
    HomePage(),
    UploadImagePage(),
    ProfilePage(),
  ];
}
