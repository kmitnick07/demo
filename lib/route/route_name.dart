import 'package:get/get.dart';

class RouteName {
  static const String kHomePage = '/home';
  static const String kUserPage = '/user';
}

navigatorTo(page){
  Get.toNamed(page);
}