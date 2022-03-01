import 'package:get/instance_manager.dart';

import '../controllers/bottom_bar_controller.dart';
import '../controllers/shimmer_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomController());
    Get.lazyPut(() => ShimmerController());
  }
}
