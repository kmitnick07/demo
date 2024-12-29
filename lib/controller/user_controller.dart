import 'dart:convert';
import 'dart:developer';

import 'package:demo_xr/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../utils/const.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {
  TextEditingController userNameController = TextEditingController();
  RxBool isLoading = false.obs;

  List<Map<String, dynamic>> dropDownList = [
    {"id": "name_sahil", "name": "Sahil"},
    {"id": "name_shivam", "name": "Shivam"},
    {"id": "name_shubham", "name": "Shubham"},
    {"id": "name_rahul", "name": "Rahul"},
    {"id": "name_ashish", "name": "Ashish"},
    {"id": "name_vishal", "name": "Vishal"},
  ];

  RxList<UserModel> userList = <UserModel>[].obs;

  @override
  void onInit() {
    fetchAllUser();
    super.onInit();
  }

  @override
  void dispose() {
    userNameController.dispose();
    super.dispose();
  }

  Future<void> fetchAllUser() async {
    Uri url = Uri.parse(kGetAllUserURL);
    Map<String, String> headers = {
      'accept': '*/*',
      'Authorization': kAuthToken,
      'Content-Type': 'application/json',
    };
    Object body = jsonEncode({
      "masterSearch": userNameController.text.trim(),
      "lstDesignationId": [0],
      "lstRoleId": [0],
      "lstDepartmentId": [0],
      "eStatus": 1,
      "maxItem": 0,
      "pageNo": 1,
    });
    isLoading.value = true;
    try {
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        final data = result['lstUser'];
        userList.value = (data as List<dynamic>).map((e) => UserModel.fromJson(e as Map<String, dynamic>)).toList();
      }
    } catch (e) {
      print(e);
      rethrow;
    } finally {
      isLoading.value = false;
    }
  }
}
