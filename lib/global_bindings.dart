import 'package:demo_xr/controller/home_controller.dart';
import 'package:demo_xr/controller/user_controller.dart';
import 'package:get/get.dart';

class GlobalScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<UserController>(() => UserController());
  }
}
