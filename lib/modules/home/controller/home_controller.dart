import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/core/assets/constant.dart';

class HomeController extends GetxController {
  List<FeedPost> feedpost = [
    FeedPost(
        kJpgImage1,
        "Samantha Feng",
        "4 Minutes ago",
        kJpgImage1,
        "Samantha Feg",
        "Share the happiness with young generation, its so excited",
        "#Shareyourhappiness"),
    FeedPost(
        kJpgImage2,
        "Sophia",
        "20 Minutes ago",
        kJpgImage2,
        "Sophia",
        "Share the happiness with young generation, its so excited",
        "#Shareyourhappiness"),
    FeedPost(
        kJpgImage3,
        "Isabella",
        "24 Minutes ago",
        kJpgImage3,
        "Isabella",
        "Share the happiness with young generation, its so excited",
        "#Shareyourhappiness"),
    FeedPost(
        kJpgImage4,
        "Elizabeth",
        "24 Minutes ago",
        kJpgImage4,
        "Elizabeth",
        "Share the happiness with young generation, its so excited",
        "#Shareyourhappiness"),
    FeedPost(
        kJpgImage5,
        "Sofia",
        "24 Minutes ago",
        kJpgImage5,
        "Sofia",
        "Share the happiness with young generation, its so excited",
        "#Shareyourhappiness"),
    FeedPost(
        kJpgImage2,
        "Sophia",
        "26 Minutes ago",
        kJpgImage2,
        "Sophia",
        "Share the happiness with young generation, its so excited",
        "#Shareyourhappiness"),
    FeedPost(
        kJpgImage3,
        "Isabella",
        "28 Minutes ago",
        kJpgImage3,
        "Isabella",
        "Share the happiness with young generation, its so excited",
        "#Shareyourhappiness"),
  ];
  List<FeedStoryimage> storyimages = [
    FeedStoryimage(kJpgImage1),
    FeedStoryimage(kJpgImage2),
    FeedStoryimage(kJpgImage3),
    FeedStoryimage(kJpgImage4),
    FeedStoryimage(kJpgImage5),
    FeedStoryimage(kJpgImage3),
  ];
}

class FeedPost {
  final String profileimage;
  final String profilename;
  final String posttime;
  final String postimage;

  final String Text;
  final String Text2;
  final String hashtag;
  FeedPost(this.profileimage, this.profilename, this.posttime, this.postimage,
      this.Text, this.Text2, this.hashtag);
}

class FeedStoryimage {
  final String image;

  FeedStoryimage(this.image);
}
