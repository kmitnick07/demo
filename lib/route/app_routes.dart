import 'package:demo_xr/route/route_name.dart';
import 'package:demo_xr/view/home_page.dart';
import 'package:demo_xr/view/user_page.dart';
import 'package:get/get.dart';

import '../global_bindings.dart';

class AppRoutes {
  static final pages = [
    GetPage(
        name: RouteName.kHomePage, page: () => MyHomePage(), binding: GlobalScreenBindings(), transition: transition),
    GetPage(name: RouteName.kUserPage, page: () => UserPage(), binding: GlobalScreenBindings(), transition: transition),
  ];
}

Transition transition = Transition.fadeIn;
