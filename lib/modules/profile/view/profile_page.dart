import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/core/assets/constant.dart';
import 'package:task_app/core/utils/app_colors.dart';
import 'package:task_app/core/utils/app_text_style.dart';
import 'package:task_app/core/widgets/container.dart';
import 'package:task_app/core/widgets/custom_text.dart';
import 'package:task_app/core/widgets/tab_view_button.dart';
import 'package:task_app/modules/profile/controller/profile_controller.dart';
import 'package:task_app/modules/upload_image/controller/upload_image_controller.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return GetX<ProfileController>(
        init: ProfileController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.whiteColor,
            body: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                // physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Column(children: [
                    SizedBox(height: size.height * 0.04),
                    Row(
                      children: [
                        SizedBox(width: size.width * 0.02),
                        Text(
                          "Cia Catherina Fen",
                          style: AppTextStyle.textStyleMediumBold,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Icon(Icons.keyboard_arrow_down_outlined),
                        ),
                        Spacer(),
                        Icon(Icons.more_vert),
                        SizedBox(width: size.width * 0.03),
                      ],
                    ),
                    SizedBox(height: size.height * 0.03),
                    Row(
                      children: [
                        SizedBox(width: size.width * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GradientContainer(
                                image: kJpgImage1,
                                index: 0,
                                height: size.height * 0.08,
                                width: size.width * 0.18),
                            SizedBox(height: 5),
                            Text("@fenccia",
                                style: AppTextStyle.textStyleXSmallBold),
                            Text("Actor and Singer",
                                style: AppTextStyle.textStyleXSmallBold),
                          ],
                        ),
                        customText(title: "12", subtitle: "Posting"),
                        SizedBox(width: size.width * 0.05),
                        customText(title: "24,9k", subtitle: "Followers"),
                        SizedBox(width: size.width * 0.05),
                        customText(title: "120", subtitle: "Following"),
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    Column(
                      children: [
                        Container(
                            height: size.height * 0.13,
                            width: double.infinity,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.storyimages.length + 1,
                                itemBuilder: (BuildContext context, index) {
                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                    child: Column(
                                      children: [
                                        index == controller.storyimages.length
                                            ? Padding(
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: CircleAvatar(
                                                  radius: 27,
                                                  backgroundColor:
                                                      AppColors.greyColor400,
                                                  child: Icon(Icons.add,
                                                      color:
                                                          AppColors.whiteColor),
                                                ),
                                              )
                                            : Column(
                                                children: [
                                                  GradientContainer1(
                                                      shape: BoxShape.circle,
                                                      image: controller
                                                          .storyimages[index]
                                                          .image,
                                                      height:
                                                          size.height * 0.08,
                                                      width: size.width * 0.15),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    controller
                                                        .storyimages[index]
                                                        .name,
                                                    style: AppTextStyle
                                                        .textStyleXSmallNormal,
                                                  )
                                                ],
                                              )
                                      ],
                                    ),
                                  );
                                })),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                        child: Row(
                      children: [
                        Expanded(
                          child: tabViewButton(
                              onTap: () {
                                controller.isSpecialistTab.value = false;
                              },
                              title: Icon(Icons.grid_view_rounded),
                              textColor: !controller.isSpecialistTab.value
                                  ? AppColors.whiteColor
                                  : AppColors.iconLightGreyColor,
                              color: !controller.isSpecialistTab.value
                                  ? AppColors.primaryColor
                                  : AppColors.whiteColor),
                        ),
                        Expanded(
                          child: tabViewButton(
                              onTap: () {
                                controller.isSpecialistTab.value = true;
                              },
                              title: Icon(Icons.video_collection_outlined),
                              textColor: controller.isSpecialistTab.value
                                  ? AppColors.whiteColor
                                  : AppColors.iconLightGreyColor,
                              color: controller.isSpecialistTab.value
                                  ? AppColors.primaryColor
                                  : AppColors.whiteColor),
                        ),
                      ],
                    )),
                    if (controller.isSpecialistTab.value == false) ...{
                      if (ImageData.imageList.isEmpty == true) ...{
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 150),
                          child: Text("No Image Uploaded!"),
                        )
                      } else ...{
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.48,
                                child: GridView.builder(
                                    itemCount: ImageData.imageList.length,
                                    padding: EdgeInsets.only(top: 2),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            crossAxisSpacing: 5,
                                            mainAxisSpacing: 5),
                                    itemBuilder: (context, index) {
                                      return Container(
                                        child: Image.file(
                                          ImageData.imageList[index].image,
                                          fit: BoxFit.cover,
                                        ),
                                      );
                                    }),
                              )
                            ],
                          ),
                        )
                      }
                    } else ...{
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 150),
                        child: Text("No Reels Uploaded!"),
                      )
                    }
                  ]),
                )),
          );
        });
  }
}
