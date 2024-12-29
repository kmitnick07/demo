import 'package:demo_xr/route/app_routes.dart';
import 'package:demo_xr/route/route_name.dart';
import 'package:demo_xr/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'global_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'XR',
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.kHomePage,
      initialBinding: GlobalScreenBindings(),
      getPages: AppRoutes.pages,
    );
  }
}
