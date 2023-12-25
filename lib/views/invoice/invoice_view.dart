import 'dart:developer';

import 'package:afaqay_task/shared/utils/app_colors.dart';
import 'package:afaqay_task/views/invoice/widgets/invoice_body.dart';
import 'package:flutter/material.dart';

class InvoiceView extends StatelessWidget {
  static String routeName = "invoice-view";
  const InvoiceView({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> userData =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    // print(userData["branch_name"]);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.darkBlue,
          foregroundColor: Colors.white,
          title: Text("فاتورة مابيعات"),
        ),
        body: InvoiceBody(userData: userData),
      ),
    );
  }
}
