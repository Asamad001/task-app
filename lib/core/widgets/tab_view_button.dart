import 'package:flutter/material.dart';
import 'package:task_app/core/utils/app_colors.dart';

Widget tabViewButton(
    {required Function() onTap,
    required Widget title,
    required Color textColor,
    required Color color}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: color, width: 2)),
        // borderRadius: BorderRadius.circular(100),
        color: AppColors.whiteColor,
      ),
      child: Center(child: title),
    ),
  );
}
