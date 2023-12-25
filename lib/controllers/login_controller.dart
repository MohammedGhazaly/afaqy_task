import 'dart:developer';

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
    print(userName);
    print(password);
    try {
      final response = await ApiService.postData(
        url: ApiConstants.loginEndPoint,
        data: {
          "userName": userName,
          "password": password,
        },
      );
      print(response);

      if (response.statusCode == 400) {
        message = response.data["message"];
      } else if (response.statusCode == 200) {
        print("Success");
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
}
