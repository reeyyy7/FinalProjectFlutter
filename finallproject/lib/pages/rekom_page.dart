import 'package:finallproject/models/model.dart';
import 'package:finallproject/pages/drawer_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class RekomPage extends StatefulWidget {
  const RekomPage({Key? key}) : super(key: key);

  @override
  State<RekomPage> createState() => _RekomPageState();
}

class _RekomPageState extends State<RekomPage> {
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
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blue,
          color: Colors.blue.shade400,
          animationDuration: Duration(milliseconds: 300),
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.newspaper,
              color: Colors.white,
            ),
            Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
          ]),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Rekomendasi untuk anda",
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            News(
              imagePath: "assets/img/berita.jpeg",
              titleNews:
                  "Indonesia Sudah Separuh Jalan untuk Capai Target di Piala Asia U-23",
              rating: "4.8",
              jamUpdate: "43 menit yang lalu",
            ),
            News(
              imagePath: "assets/img/berita1.jpeg",
              titleNews:
                  "Penegasan MK Tak Ada Bukti Cawe-cawe Pilpres Libatkan Jokowi",
              rating: "4.9",
              jamUpdate: "1 jam yang lalu",
            ),
            News(
              imagePath: "assets/img/berita2.jpg",
              titleNews:
                  "Mau Bebas Alzheimer? Ahli Saraf Harvard Bagikan Tipsnya, Ternyata Mudah!",
              rating: "4.7",
              jamUpdate: "2 hari yang lalu",
            ),
            News(
              imagePath: "assets/img/berita3.jpeg",
              titleNews: "Sejarah Hari Buku Sedunia 23 April 2024",
              rating: "4.7",
              jamUpdate: "4 hari yang lalu",
            ),
          ],
        )),
      ),
    );
  }
}
