import 'package:digital_test/screen/register/register_controller.dart';
import 'package:get/get.dart';




class RegisterBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
          () => RegisterController(),
    );
  }
}