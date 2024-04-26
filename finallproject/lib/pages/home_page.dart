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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F7),
                            borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          cursorHeight: 20,
                          autofocus: false,
                          decoration: InputDecoration(
                              hintText: "Cari Berita Favoritmu",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Berita Favorit 📰",
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            News(
              imagePath: "assets/img/berita.jpeg",
              titleNews: "Indonesia Separuh Jalan Capai Piala Asia U-23 ",
              rating: "4.8",
              jamUpdate: "43 menit yang lalu",
            ),
            News(
              imagePath: "assets/img/berita1.jpeg",
              titleNews: "MK: Tak Ada Bukti Pilpres 2024 Libatkan Jokowi",
              rating: "4.9",
              jamUpdate: "1 jam yang lalu",
            ),
            News(
              imagePath: "assets/img/berita2.jpg",
              titleNews: "Mau Bebas Alzheimer? Ternyata Mudah!",
              rating: "4.7",
              jamUpdate: "2 hari yang lalu",
            ),
            News(
              imagePath: "assets/img/berita3.jpeg",
              titleNews: "Sejarah Hari Buku Sedunia 23 April 2024",
              rating: "4.7",
              jamUpdate: "2 hari yang lalu",
            ),
          ],
        )),
      ),
    );
  }

  // Widget getSelectedWidget({required int index}) {
  //   Widget widget;
  //   switch (index) {
  //     case 0:
  //       widget = const HomePage();
  //       break;
  //     case 1:
  //       widget = const RekomPage();
  //       break;
  //     default:
  //       widget = const DetailPage();
  //       break;
  //   }
  //   return widget;
  // }
}
