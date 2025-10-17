import 'package:get/get.dart';
import 'package:news_app/controllers/news_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    // Put NewsController as permanent to avoid recreation
    Get.put<NewsController>(NewsController(), permanent: true);
  }
}
