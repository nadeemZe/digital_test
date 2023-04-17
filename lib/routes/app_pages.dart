import 'package:digital_test/screen/home/home_binding.dart';
import 'package:digital_test/screen/home/home_view.dart';
import 'package:digital_test/screen/login/login_binding.dart';
import 'package:digital_test/screen/login/login_view.dart';
import 'package:digital_test/screen/register/register_binding.dart';
import 'package:digital_test/screen/register/register_view.dart';
import 'package:digital_test/screen/welcome/welcome_binding.dart';
import 'package:digital_test/screen/welcome/welcome_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';




class AppPages {
  AppPages._();

  static const WELCOME = '/welcome';

  static final routes = [
    GetPage(
      name: '/welcome',
      page: () => const WelcomeView(),
      binding: WelcomeBindings(),
    ),
    GetPage(
      name: '/login',
      page: () => const LoginView(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: '/register',
      page: () => const RegisterView(),
      binding: RegisterBindings(),
    ),
    GetPage(
      name: '/home',
      page: () => const HomeView(),
      binding: HomeBindings(),
    ),
  ];
}
