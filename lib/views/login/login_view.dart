import 'package:afaqay_task/shared/utils/app_assets.dart';
import 'package:afaqay_task/views/login/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  static String routeName = "login-view";
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: LoginViewBody(),
      ),
    );
  }
}
