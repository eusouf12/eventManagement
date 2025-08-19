import 'package:get/get.dart';
import '../../view/screen/dmOver/social/controller/social_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    ///==========================Default Custom Controller ==================
    // Get.lazyPut(() => ProfileController(), fenix: true);
    // Get.lazyPut(() => EventController(), fenix: true);
    Get.lazyPut(() => SocialController(), fenix: true);

  }
}
 