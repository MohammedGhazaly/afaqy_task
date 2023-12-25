import 'package:afaqay_task/views/invoice/widgets/branch_top_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceBody extends StatelessWidget {
  final Map<String, dynamic> userData;
  const InvoiceBody({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    print(userData["branch_name"]);
    print(userData["company_name"]);
    return Column(
      children: [
        SizedBox(
          height: 12.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Row(
            children: [
              Expanded(child: BranchTopDetails(text: userData["branch_name"])),
              SizedBox(
                width: 12.w,
              ),
              Expanded(
                  child: BranchTopDetails(
                text: userData["company_name"],
              )),
            ],
          ),
        )
      ],
    );
  }
}
// userData["company_name"]

