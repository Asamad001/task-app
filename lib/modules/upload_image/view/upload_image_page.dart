import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/core/utils/app_colors.dart';
import 'package:task_app/core/utils/app_text_style.dart';
import 'package:task_app/modules/upload_image/controller/upload_image_controller.dart';

class UploadImagePage extends StatelessWidget {
  UploadImagePage({super.key});
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return GetBuilder<UploadImageController>(
        init: UploadImageController(),
        builder: (controller) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.getImage();
                    },
                    child: Container(
                      height: size.height * 0.07,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.blackColor),
                      child: Center(
                        child: Text(
                          "Upload Image",
                          style: AppTextStyle.textStyleMediumBold
                              .copyWith(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
