import 'package:afaqay_task/shared/services/api_service.dart';
import 'package:afaqay_task/shared/services/local_db_service.dart';
import 'package:afaqay_task/views/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ApiService.init();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  await LocalDbService.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Afaqy Task',
            theme: ThemeData(
              fontFamily: "Cairo",
              useMaterial3: true,
            ),
            initialRoute: LoginView.routeName,
            routes: {
              LoginView.routeName: (context) => const LoginView(),
            },
          );
        });
  }
}
