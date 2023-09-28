// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:task_app/modules/bottom_navigation/view/navigation_page.dart';
import 'package:task_app/modules/get_start/view/get_start_page.dart';
import 'package:task_app/routes/app_routes.dart';

class AppPages extends Routes {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => GetStartPage(),
    ),
    GetPage(
      name: Routes.NAVIGATION_BAR,
      page: () => NavigationBarPage(),
    ),
  ];
}
