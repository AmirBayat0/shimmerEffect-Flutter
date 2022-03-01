import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:get/get.dart';

import '../screen/shimmer_screen.dart';
import '../../controllers/bottom_bar_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 42, 42, 42),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurpleAccent,
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          centerTitle: true,
          elevation: 2,
          title: Text("@CodeWithFlexz"),
          backgroundColor: Color.fromARGB(255, 15, 15, 15),
        ),
        body: ShimmerScreen(),
        bottomNavigationBar: Obx(
          () {
            return AnimatedBottomNavigationBar(
              backgroundColor: Color.fromARGB(255, 32, 32, 32),
              activeColor: Colors.deepPurpleAccent,
              inactiveColor: Color.fromARGB(255, 139, 139, 139),
              icons: [
                Icons.home,
                Icons.explore,
                Icons.settings,
                Icons.account_circle
              ],
              gapLocation: GapLocation.center,
              notchSmoothness: NotchSmoothness.verySmoothEdge,
              leftCornerRadius: 32,
              rightCornerRadius: 32,
              activeIndex: Get.find<BottomController>().currentIndex.value,
              onTap: (index) {
                Get.find<BottomController>().currentIndex.value = index;
              },
            );
          },
        ),
      ),
    );
  }
}
