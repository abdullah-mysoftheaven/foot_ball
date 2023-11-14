
import 'package:get/get.dart';

import '../home_page_screen/home_page_view.dart';
import '../home_page_screen/home_page_view_controller.dart';

class  SplashScreenPageController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.deleteAll();
      Get.offAll(HomePageView())?.then((value) => Get.delete<HomePageViewController>());

    });

  }

}