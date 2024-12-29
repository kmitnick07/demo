import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt counter = 0.obs;

  @override
  void onInit() {
    print("Hello from the home controller");
    super.onInit();
  }

  incrementCounter() {
    counter++;
  }
}
