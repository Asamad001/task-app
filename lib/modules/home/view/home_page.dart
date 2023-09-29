import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:task_app/core/assets/constant.dart';
import 'package:task_app/core/utils/app_colors.dart';
import 'package:task_app/core/utils/app_text_style.dart';
import 'package:task_app/core/widgets/container.dart';
import 'package:task_app/modules/home/controller/home_controller.dart';

import '../../../core/strings/text_constant.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: ((controller) {
        return Scaffold(
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.04),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.02),
                      Text(
                        kAppName,
                        style: AppTextStyle.textStyleLargeBold,
                      ),
                      Spacer(),
                      Icon(Icons.search),
                      SizedBox(width: size.width * 0.03),
                      Icon(Icons.notifications_none),
                      SizedBox(width: size.width * 0.03),
                      Badge(
                          label: Text("5"),
                          child: Icon(CupertinoIcons.bolt_horizontal_circle)),
                      SizedBox(width: size.width * 0.03),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  Column(
                    children: [
                      Container(
                          height: size.height * 0.14,
                          width: double.infinity,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.storyimages.length,
                              itemBuilder: (BuildContext context, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 10),
                                  child: Stack(
                                    children: [
                                      GradientContainer(
                                          image: controller
                                              .storyimages[index].image,
                                          index: index,
                                          height: size.height * 0.08,
                                          width: size.width * 0.18),
                                      index == 0
                                          ? Positioned(
                                              bottom: 20,
                                              left: 20,
                                              right: 20,
                                              child: Container(
                                                height: 20,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    color: AppColors.black1,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Center(
                                                    child: Icon(
                                                  Icons.add,
                                                  size: 17,
                                                  color: AppColors.whiteColor,
                                                )),
                                              ),
                                            )
                                          : SizedBox(),
                                    ],
                                  ),
                                );
                              })),
                    ],
                  ),
                  Container(
                      width: double.infinity,
                      child: Column(
                        children:
                            List.generate(controller.feedpost.length, (index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: index == 0 ? 0 : 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5,
                                  ),
                                  child: Row(
                                    children: [
                                      GradientContainer(
                                          image: controller
                                              .feedpost[index].profileimage,
                                          index: 1,
                                          height: size.height * 0.06,
                                          width: size.width * 0.14),
                                      SizedBox(width: size.width * 0.02),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            controller
                                                .feedpost[index].profilename,
                                            style: AppTextStyle
                                                .textStyleSmallNormal
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                          SizedBox(height: size.height * 0.005),
                                          Text(
                                            controller.feedpost[index].posttime,
                                            style: AppTextStyle
                                                .textStyleSmallNormal
                                                .copyWith(
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.greyColor),
                                          ),
                                          SizedBox(height: size.height * 0.01),
                                        ],
                                      ),
                                      Spacer(),
                                      Icon(Icons.more_vert),
                                      SizedBox(width: size.width * 0.02),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.015,
                                ),
                                Container(
                                  height: size.height * 0.38,
                                  width: double.infinity,
                                  child: Image.asset(
                                    controller.feedpost[index].postimage,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                              text:
                                                  "${controller.feedpost[index].Text} ",
                                              style: AppTextStyle
                                                  .textStyleXSmallBold,
                                              children: [
                                                TextSpan(
                                                    style: AppTextStyle
                                                        .textStyleXSmallNormal,
                                                    text: controller
                                                        .feedpost[index].Text2)
                                              ]),
                                        ),
                                        SizedBox(height: size.height * 0.02),
                                        Text(
                                            controller.feedpost[index].hashtag),
                                        SizedBox(height: size.height * 0.02),
                                        Row(
                                          children: [
                                            Icon(
                                              CupertinoIcons.heart_fill,
                                              color: AppColors.pink,
                                              size: 20,
                                            ),
                                            SizedBox(width: size.width * 0.01),
                                            Text(
                                              "9,7k Like",
                                              style: AppTextStyle
                                                  .textStyleXSmallBold,
                                            ),
                                            SizedBox(width: size.width * 0.03),
                                            Icon(
                                              CupertinoIcons.bubble_right,
                                              size: 20,
                                            ),
                                            SizedBox(width: size.width * 0.01),
                                            Text(
                                              "2k Comments",
                                              style: AppTextStyle
                                                  .textStyleXSmallBold,
                                            ),
                                            Spacer(),
                                            Text(
                                              "Share",
                                              style: AppTextStyle
                                                  .textStyleXSmallBold,
                                            ),
                                            SizedBox(width: size.width * 0.02),
                                            Icon(
                                              CupertinoIcons
                                                  .arrowshape_turn_up_right,
                                              size: 18,
                                            ),
                                            SizedBox(width: size.width * 0.02),
                                          ],
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          );
                        }),
                      ))
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
