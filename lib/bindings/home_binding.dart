import 'package:get/get.dart';
import 'package:news_app/controllers/news_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // Check if NewsController already exists, if not create it
    if (!Get.isRegistered<NewsController>()) {
      Get.put<NewsController>(NewsController(), permanent: true);
    }
  }
}
