import 'package:afaqay_task/models/user_models/user_data_model.dart';

class UserResponseModel {
  UserDataModel? data;
  num? status;
  String? message;
  bool? isSuccess;
  String? token;

  UserResponseModel(
      {this.data, this.status, this.message, this.isSuccess, this.token});

  UserResponseModel.fromJson(Map<String, dynamic> json) {
    data =
        json['data'] != null ? new UserDataModel.fromJson(json['data']) : null;
    status = json['status'];
    message = json['message'];
    isSuccess = json['isSuccess'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status'] = this.status;
    data['message'] = this.message;
    data['isSuccess'] = this.isSuccess;
    data['token'] = this.token;
    return data;
  }
}
