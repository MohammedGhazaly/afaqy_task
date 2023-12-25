import 'dart:developer';

import 'package:afaqay_task/models/user_models/user_data_model.dart';
import 'package:afaqay_task/shared/services/local/app_shared_pref_keys.dart';
import 'package:afaqay_task/shared/services/local/local_db_service.dart';
import 'package:afaqay_task/shared/services/remote/api_constants.dart';
import 'package:afaqay_task/shared/services/remote/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  bool isLogging = false;
  String? message;

  Future<void> login(
      {required String userName,
      required String password,
      required BuildContext context}) async {
    isLogging = true;
    notifyListeners();
    try {
      final response = await ApiService.postData(
        url: ApiConstants.loginEndPoint,
        data: {
          "userName": userName,
          "password": password,
        },
      );

      if (response.statusCode == 400) {
        message = response.data["message"];
      } else if (response.statusCode == 200) {
        UserDataModel userData = UserDataModel(
          branchNameA: response.data["data"]["branchNameA"],
          companyNameA: response.data["data"]["companyNameA"],
        );
        await saveUserData(user: userData, token: response.data["token"]);
      }
    } catch (e) {
      if (e is DioException) {
        if (e.type == DioExceptionType.badResponse) {
          message = e.response?.data["message"] ?? "Error logging";
        } else if (e.type == DioExceptionType.connectionError) {
          message = "No internet connection";
        }
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message ?? "Something went wrong")));
      }
    }
    isLogging = false;
    notifyListeners();
  }

  Future<void> saveUserData(
      {required UserDataModel user, required String token}) async {
    await LocalDbService.saveData(key: AppSharedPrefKeys.token, value: token);
    await LocalDbService.saveData(
        key: AppSharedPrefKeys.branchName, value: user.branchNameA);
    await LocalDbService.saveData(
        key: AppSharedPrefKeys.companyName, value: user.companyNameA);
  }
}
