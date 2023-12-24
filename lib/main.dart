import 'package:afaqay_task/shared/services/api_service.dart';
import 'package:afaqay_task/shared/services/local_db_service.dart';
import 'package:afaqay_task/views/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: LoginView.routeName,
      routes: {
        LoginView.routeName: (context) => const LoginView(),
      },
    );
  }
}
