import 'package:afaqay_task/shared/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isObsucre;
  final TextEditingController textEditingController;
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.isObsucre,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: isObsucre,
      obscuringCharacter: "▪",
      cursorColor: AppColors.lightBlue,
      style: TextStyle(
        fontSize: 16.sp,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14.sp,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: AppColors.lightBlue,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: AppColors.lightBlue,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: AppColors.lightBlue,
            width: 2,
          ),
        ),
      ),
    );
  }
}
