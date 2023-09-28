// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:task_app/core/assets/constant.dart';
import 'package:task_app/core/utils/app_colors.dart';
import 'package:task_app/core/utils/app_text_style.dart';
import 'package:task_app/core/widgets/clip_container.dart';
import 'package:task_app/routes/app_routes.dart';

class GetStartPage extends StatelessWidget {
  GetStartPage({super.key});
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          ClipContainer(
              image: kPngGetStart,
              texttop: size.height * 0.03,
              textleft: size.width * 0.7,
              text: "Instravel",
              rotate: 3,
              fontsize: size.height * 0.14),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.67,
              horizontal: size.width * 0.1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Share your Happiness",
                  style: AppTextStyle.textStyleLargeNormal.copyWith(
                      fontSize: size.width * 0.07, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: size.height * 0.03),
                Text(
                  "Explore the world and share your trip into instravel and bring your happiness together ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: size.width * 0.04,
                    fontFamily: "Regular",
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.NAVIGATION_BAR),
                  child: Container(
                    height: size.height * 0.07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.blackColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "Get Started",
                      style: AppTextStyle.textStyleMediumNormal
                          .copyWith(color: AppColors.whiteColor),
                    )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
