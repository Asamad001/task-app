import 'package:flutter/material.dart';
import 'package:task_app/core/utils/app_colors.dart';
import 'package:task_app/core/utils/app_text_style.dart';

Widget customText({required String title, required String subtitle}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        title,
        style: AppTextStyle.textStyleSmallBold,
      ),
      SizedBox(height: 4),
      Text(
        subtitle,
        style: AppTextStyle.textStyleSmallBold
            .copyWith(color: AppColors.greyColor),
      ),
      SizedBox(height: 20),
    ],
  );
}
