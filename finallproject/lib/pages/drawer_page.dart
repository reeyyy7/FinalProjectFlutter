import 'package:finallproject/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Reihan Jr"),
          currentAccountPicture:
              CircleAvatar(backgroundImage: AssetImage("assets/img/me.jpg")),
          accountEmail: Text("reihanjr52@gmail.com"),
        ),
        DrawerListTile(
          iconData: Icons.home,
          title: "Home",
          onTilePressed: () {
            Get.toNamed(RouteName.home_page);
          },
        ),
        DrawerListTile(
          iconData: Icons.newspaper,
          title: "Recommendation",
          onTilePressed: () {
            Get.toNamed(RouteName.rekom_page);
          },
        ),
        DrawerListTile(
          iconData: Icons.account_circle,
          title: "Account",
          onTilePressed: () {
            Get.toNamed(RouteName.akun_page);
          },
        ),
        DrawerListTile(
          iconData: Icons.logout,
          title: "Logout",
          onTilePressed: () {
            Get.toNamed(RouteName.login_page);
          },
        ),
      ],
    ));
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final VoidCallback? onTilePressed;

  const DrawerListTile(
      {Key? key, this.iconData, this.title, this.onTilePressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title!,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
