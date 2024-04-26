import 'package:finallproject/pages/detail_page.dart';
import 'package:finallproject/pages/drawer_page.dart';
import 'package:finallproject/pages/rekom_page.dart';
import 'package:finallproject/models/model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AkunPage extends StatefulWidget {
  const AkunPage({Key? key}) : super(key: key);

  @override
  State<AkunPage> createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        title: Text(
          "Halo Reihan, Selamat Datang !",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: DrawerPage(),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(children: [jobs_item(context)])),
      ),
    );
  }
}

Container jobs_item(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height / 2,
    child: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(0),
      // crossAxisSpacing: 10,
      // mainAxisSpacing: 10,
      crossAxisCount: 1,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.blue.shade400,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "About Me",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/me.jpg")),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2))),
              SizedBox(
                height: 10,
              ),
              Text(
                "Reihan Jr",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "reihanjr52@gmail.com",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w100,
                    color: Colors.white),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    "Portofolio : ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Image.asset(
                    "assets/img/flutter.png",
                    height: 50,
                    width: 40,
                  ),
                  Image.asset(
                    "assets/img/android.png",
                    height: 40,
                    width: 40,
                  ),
                  Image.asset(
                    "assets/img/kotlin.png",
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Contact : ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Image.asset(
                    "assets/img/wa.png",
                    height: 40,
                    width: 40,
                  ),
                  Image.asset(
                    "assets/img/tele.png",
                    height: 40,
                    width: 40,
                  ),
                  Image.asset(
                    "assets/img/gmail.png",
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

TextStyle positionText() {
  return TextStyle(color: Colors.grey, fontWeight: FontWeight.w100);
}

TextStyle subTitle() => TextStyle(fontWeight: FontWeight.w500);

TextStyle titleStyle() {
  return TextStyle(fontSize: 15, fontWeight: FontWeight.w700);
}
