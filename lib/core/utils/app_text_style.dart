// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/core/utils/app_colors.dart';

class AppTextStyle {
  static const double _extralargeFontSize = 20;

  static const double _largeFontSize = 18;
  static const double _mediumFontSize = 16;
  static const double _smallFontSize = 14;
  static const double _extraSmallFontSize = 12;

  /// Large Text Style (Bold)
  static final textStyleXLargeBold = Get.theme.textTheme.headline6!.merge(
      const TextStyle(
          fontWeight: FontWeight.bold, fontSize: _extralargeFontSize));

  /// Large Text Style (Normal)
  static final textStyleXLargeNormal = Get.theme.textTheme.headline6!
      .merge(const TextStyle(fontSize: _extralargeFontSize));

  /// Large Text Style (Bold)
  static final textStyleLargeBold = Get.theme.textTheme.headline6!.merge(
      const TextStyle(fontWeight: FontWeight.bold, fontSize: _largeFontSize));

  /// Large Text Style (Normal)
  static final textStyleLargeNormal = Get.theme.textTheme.headline6!
      .merge(const TextStyle(fontSize: _largeFontSize));

  /// Medium Text Style (Bold)
  static final textStyleMediumBold = Get.theme.textTheme.headline6!.merge(
      TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.blackColor,
          fontSize: _mediumFontSize));

  /// Medium Text Style (Normal)
  static final textStyleMediumNormal = Get.theme.textTheme.headline6!
      .merge(TextStyle(color: AppColors.blackColor, fontSize: _mediumFontSize));

  /// Small Text Style (Bold)
  static final textStyleSmallBold = Get.theme.textTheme.headline6!.merge(
      TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.blackColor,
          fontSize: _smallFontSize));

  /// Small Text Style (Normal)
  static final textStyleSmallNormal = Get.theme.textTheme.headline6!
      .merge(TextStyle(color: AppColors.blackColor, fontSize: _smallFontSize));

  /// Extra Small Text Style (Bold)
  static final textStyleXSmallBold = Get.theme.textTheme.headline6!.merge(
      TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.blackColor,
          fontSize: _extraSmallFontSize));

  /// Extra Small Text Style (Normal)
  static final textStyleXSmallNormal = Get.theme.textTheme.headline6!.merge(
      TextStyle(color: AppColors.blackColor, fontSize: _extraSmallFontSize));
}
