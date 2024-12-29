import 'package:demo_xr/controller/home_controller.dart';
import 'package:demo_xr/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text("xR Demo"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'You have pushed the button this many times:',
                ),
                Obx(
                  () => Text(
                    controller.counter.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      navigatorTo(RouteName.kUserPage);
                    },
                    child: Text("User Page"))
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.incrementCounter();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
