import 'package:afaqay_task/controllers/login_controller.dart';
import 'package:afaqay_task/shared/services/local/app_shared_pref_keys.dart';
import 'package:afaqay_task/shared/services/local/local_db_service.dart';
import 'package:afaqay_task/views/invoice/invoice_view.dart';
import 'package:afaqay_task/views/login/widgets/custom_button.dart';
import 'package:afaqay_task/views/login/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
    return Form(
      child: Column(
        children: [
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
          SizedBox(
            height: 125.h,
          ),
          Consumer<LoginController>(builder: (context, loginController, _) {
            return SizedBox(
              width: double.infinity,
              height: 40.h,
              child: CustomButton(
                isLogging: loginController.isLogging,
                text: "تسجيل الدخول",
                onPressedFunction: () async {
                  try {
                    await loginController.login(
                        userName: userNameController.text,
                        password: passwordController.text,
                        context: context);
                    if (!context.mounted) return;

                    Navigator.pushNamed(
                      context,
                      InvoiceView.routeName,
                      arguments: {
                        "token": LocalDbService.getData(
                            key: AppSharedPrefKeys.token),
                        "branch_name": LocalDbService.getData(
                            key: AppSharedPrefKeys.branchName),
                        "company_name": LocalDbService.getData(
                            key: AppSharedPrefKeys.companyName),
                      },
                    );
                  } catch (e) {
                    // TODO
                  }
                },
              ),
            );
          }),
          SizedBox(
            height: 50.h,
          ),
        ],
      ),
    );
  }
}
