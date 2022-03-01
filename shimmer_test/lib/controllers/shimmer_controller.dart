import 'package:get/get.dart';

class ShimmerController extends GetxController {
  var isloading = true.obs;

  void isLoading() {
    Future.delayed(Duration(seconds: 15), () {
      isloading.value = false;
    });
  }
}
