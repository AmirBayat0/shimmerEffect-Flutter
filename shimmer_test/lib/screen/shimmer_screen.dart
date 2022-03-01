// ignore_for_file: must_be_immutable

import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/shimmer_controller.dart';
import '../model/user_model.dart';

class ShimmerScreen extends StatelessWidget {
  const ShimmerScreen({Key? key}) : super(key: key);



/////////////////////////////////////
// @CodeWithFlexz on Instagram
//
// AmirBayat0 on Github
// Programming With Flexz on Youtube
/////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    Get.find<ShimmerController>().isLoading();
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 42, 42, 42),
      body: Container(
        width: Get.width,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              var delay = index * 200;
              return Obx(() {
                return Get.find<ShimmerController>().isloading.value
                    ? ShimmerSkeleton(delay)
                    : MainSkeleton(index);
              });
            }),
      ),
    ));
  }
}

class ShimmerSkeleton extends StatelessWidget {
  int delay;
  ShimmerSkeleton(this.delay);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 80,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 36, 36, 36),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            FadeShimmer.round(
              size: 60,
              fadeTheme: FadeTheme.dark,
              millisecondsDelay: delay,
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeShimmer(
                  width: 150,
                  height: 10,
                  radius: 10,
                  fadeTheme: FadeTheme.dark,
                  millisecondsDelay: delay,
                ),
                SizedBox(height: 10),
                FadeShimmer(
                  width: 180,
                  height: 9,
                  radius: 10,
                  fadeTheme: FadeTheme.dark,
                  millisecondsDelay: delay,
                ),
              ],
            )
          ],
        ));
  }
}

class MainSkeleton extends StatelessWidget {
  int index;
  MainSkeleton(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 80,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 36, 36, 36),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(listOfUsers[index].imageAd),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  listOfUsers[index].name,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  listOfUsers[index].decription,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 194, 194, 194),
                      fontSize: 16),
                )
              ],
            )
          ],
        ));
  }
}
