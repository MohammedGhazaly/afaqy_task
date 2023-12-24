import 'package:afaqay_task/shared/utils/app_assets.dart';
import 'package:afaqay_task/views/login/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  late final TextEditingController userNameController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userNameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    userNameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Center(
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
            CustomTextField(
                hintText: "اسم المستخدم",
                isObsucre: false,
                textEditingController: userNameController),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
                hintText: "الرقم السري",
                isObsucre: true,
                textEditingController: passwordController),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Text("تغير المضيف"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
