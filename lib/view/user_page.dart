import 'dart:developer';

import 'package:demo_xr/controller/user_controller.dart';
import 'package:demo_xr/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';

class UserPage extends GetView<UserController> {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Obx(() {
          return Column(
            spacing: 12,
            children: [
              TextField(
                controller: controller.userNameController,
                cursorColor: Colors.green,
                onChanged: (value) {
                  print(value);
                  controller.fetchAllUser();
                },
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "User Name",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey[200]!,
                    ),
                  ),
                ),
              ),
              if (!controller.isLoading.value)
                DropdownButtonFormField(
                  items: controller.userList.map(
                    (e) {
                      return DropdownMenuItem(
                        value: (e.userId).toString(),
                        child: Text(e.fullName.toString()),
                      );
                    },
                  ).toList(),
                  onChanged: (value) {
                    print(value);

                    UserModel data = controller.userList.firstWhere((element) => element.userId.toString() == value);
                    print(data.fullName.toString());
                  },
                  hint: Text("Select Item"),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              if (controller.isLoading.value) CircularProgressIndicator(),
              if (!controller.isLoading.value)
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.userList.length,
                    itemBuilder: (context, index) {
                      return Text(controller.userList[index].fullName.toString());
                    },
                  ),
                ),
            ],
          );
        }),
      ),
    );
  }
}
