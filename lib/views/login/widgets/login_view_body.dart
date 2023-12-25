import 'package:afaqay_task/shared/utils/app_assets.dart';
import 'package:afaqay_task/views/login/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 75.h,
              ),
              Image.asset(
                AppAssets.logo,
                width: 125.w,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "افاقي ويب",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "إحدي منتجات شركة افاقي لتقنية المعلومات",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
