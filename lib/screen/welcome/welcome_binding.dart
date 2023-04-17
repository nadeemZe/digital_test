import 'package:digital_test/screen/welcome/welcome_controller.dart';
import 'package:get/get.dart';


class WelcomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(
          () => WelcomeController(),
    );
  }
}