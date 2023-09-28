import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/core/utils/app_colors.dart';
import 'package:task_app/core/utils/app_text_style.dart';
import 'package:task_app/modules/bottom_navigation/controller/navigation_controller.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({Key? key}) : super(key: key);

  @override
  State<NavigationBarPage> createState() => _NavigationBarPage();
}

class _NavigationBarPage extends State<NavigationBarPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
        init: NavigationController(),
        builder: (controller) {
          return Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                items: [
                  bottomNavigationBarItem(
                      icon: CupertinoIcons.house_fill,
                      name: "•",
                      iconcolor: controller.currentindex == 0
                          ? AppColors.blueColor
                          : AppColors.greyColor),
                  bottomNavigationBarItem(
                      icon: CupertinoIcons.camera,
                      name: "•",
                      iconcolor: controller.currentindex == 1
                          ? AppColors.blueColor
                          : AppColors.greyColor),
                  bottomNavigationBarItem(
                      icon: CupertinoIcons.person,
                      name: "•",
                      iconcolor: controller.currentindex == 2
                          ? AppColors.blueColor
                          : AppColors.greyColor)
                ],
                currentIndex: controller.currentindex,
                showSelectedLabels: true,
                showUnselectedLabels: false,
                selectedItemColor: Colors.blue,
                unselectedItemColor: Colors.black,
                selectedFontSize: 14,
                iconSize: 30,
                unselectedFontSize: 14,
                onTap: controller.ontap,
              ),
              body: controller.children[controller.currentindex]);
        });
  }
}

bottomNavigationBarItem(
    {required IconData icon, required String name, required Color iconcolor}) {
  return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: iconcolor,
      ),
      label: name);
}
