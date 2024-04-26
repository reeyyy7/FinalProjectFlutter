import 'package:finallproject/pages/akun_page.dart';
import 'package:finallproject/pages/home_page.dart';
import 'package:finallproject/pages/login_page.dart';
import 'package:finallproject/pages/register_page.dart';
import 'package:finallproject/pages/detail_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:finallproject/routes/route_name.dart';

class pageRouteApp {
  static final pages = [
    GetPage(
      name: RouteName.login_page,
      page: () => LoginPage(),
    ),
    GetPage(
      name: RouteName.home_page,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.rekom_page,
      page: () => DetailPage(),
    ),
    GetPage(
      name: RouteName.register_page,
      page: () => Register(),
    ),
    GetPage(
      name: RouteName.detail_page,
      page: () => DetailPage(),
    ),
    GetPage(
      name: RouteName.akun_page,
      page: () => AkunPage(),
    ),
  ];
}
