import 'package:get/get.dart';

class WelcomeController extends GetxController {

  loginTapped(){
    Get.toNamed('/login');
  }

  registerTapped(){
    Get.toNamed('/register');
  }

}