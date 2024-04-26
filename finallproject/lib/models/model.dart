import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatelessWidget {
  final String imagePath;
  final String titleNews;
  final String rating;
  final String jamUpdate;
  const News(
      {Key? key,
      required this.imagePath,
      required this.titleNews,
      required this.rating,
      required this.jamUpdate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 230,
        child: Stack(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 10,
              child: Column(
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: Image.asset(imagePath, fit: BoxFit.cover))
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 5,
                child: SizedBox(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titleNews,
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          maxLines: 3,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            SizedBox(
                              width: 5,
                            ),
                            Text(rating,
                                style: GoogleFonts.montserrat(fontSize: 12)),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.access_time, color: Colors.grey),
                            SizedBox(
                              width: 5,
                            ),
                            Text(jamUpdate,
                                style: GoogleFonts.montserrat(fontSize: 12))
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}
