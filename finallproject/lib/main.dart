import 'package:finallproject/pages/akun_page.dart';
import 'package:finallproject/pages/detail_page.dart';
import 'package:finallproject/pages/home_page.dart';
import 'package:finallproject/pages/login_page.dart';
import 'package:finallproject/pages/register_page.dart';
import 'package:finallproject/pages/rekom_page.dart';
import 'package:finallproject/routes/page_routes.dart';
import 'package:finallproject/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade600),
        useMaterial3: true,
      ),
      home: Splash(),
      getPages: pageRouteApp.pages,
    );
  }
}
