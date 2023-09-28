import 'package:flutter/material.dart';
import 'package:get/get.dart';

GradientContainer(
    {required String image,
    required int index,
    required double height,
    required double width,
    BoxShape? shape}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      gradient: index == 0
          ? null
          : LinearGradient(colors: [
              Colors.blue.shade300,
              Colors.blue.shade200,
              Colors.blue
            ]),
      borderRadius: shape == null ? BorderRadius.circular(10) : null,
      shape: shape != null ? BoxShape.circle : BoxShape.rectangle,
    ),
    child: Container(
      margin: EdgeInsets.all(2),
      height: Get.height * 0.09,
      width: Get.width * 0.23,
      decoration: BoxDecoration(
        borderRadius: shape == null ? BorderRadius.circular(10) : null,
        shape: shape != null ? BoxShape.circle : BoxShape.rectangle,
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        color: Colors.black,
        //borderRadius: BorderRadius.circular(10)
      ),
    ),
  );
}

GradientContainer1(
    {required String image,
    required double height,
    required double width,
    BoxShape? shape}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [Colors.blue.shade300, Colors.blue.shade200, Colors.blue]),
      borderRadius: shape == null ? BorderRadius.circular(10) : null,
      shape: shape != null ? BoxShape.circle : BoxShape.rectangle,
    ),
    child: Container(
      margin: EdgeInsets.all(2),
      height: Get.height * 0.09,
      width: Get.width * 0.23,
      decoration: BoxDecoration(
        borderRadius: shape == null ? BorderRadius.circular(10) : null,
        shape: shape != null ? BoxShape.circle : BoxShape.rectangle,
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        color: Colors.black,
      ),
    ),
  );
}
