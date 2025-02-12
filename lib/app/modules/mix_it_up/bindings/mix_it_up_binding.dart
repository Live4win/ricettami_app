import 'package:get/get.dart';

import '../controllers/mix_it_up_controller.dart';

class MixItUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MixItUpController>(
      () => MixItUpController(),
    );
  }
}
