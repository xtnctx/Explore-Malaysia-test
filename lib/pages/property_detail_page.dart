import 'package:explore_malaysia/components/icon_detail.dart';
import 'package:explore_malaysia/components/property_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class PropertyDetailPage extends StatelessWidget {
  PropertyDetailPage({super.key});

  List<String> imageUrls = [
    'assets/images/1.jpeg',
    'assets/images/1-1.jpeg',
    'assets/images/1-2.jpeg',
    'assets/images/1-3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(255, 51, 51, 51), Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  PageView.builder(
                      itemCount: imageUrls.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(25.0), bottomRight: Radius.circular(25.0)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: ExactAssetImage(imageUrls[index]),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                  Positioned(
                    top: 70,
                    left: 20,
                    right: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 38,
                            color: Color(0xFF595E12),
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.image_outlined,
                              size: 38,
                              color: Color(0xFF595E12),
                            ),
                            Icon(
                              Icons.map_outlined,
                              size: 38,
                              color: Color(0xFF595E12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('MYR 5,000,000',
                              style: GoogleFonts.roboto(
                                  fontSize: 28, fontWeight: FontWeight.bold, color: const Color(0xFF595E12))),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(Icons.favorite_outline, color: Color(0xFF595E12), size: 30),
                            SizedBox(width: 10),
                            Icon(Icons.share, color: Color(0xFF595E12), size: 30),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Bungalow, Residential', style: GoogleFonts.roboto(fontSize: 20)),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Lorong Manikar 2A, Taman Prestij, Kota Kinabalu, Sabah, Malaysia',
                          style: GoogleFonts.roboto(fontSize: 16), overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(235, 255, 255, 255),
                        border: Border.all(width: 2),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          IconDetail(icon: Icons.bed_outlined, value: 3, label: 'Bedrooms'),
                          IconDetail(icon: Icons.bathroom_outlined, value: 5, label: 'Bathrooms'),
                          IconDetail(icon: Icons.garage_outlined, value: 5, label: 'Garages'),
                          IconDetail(icon: Icons.square_foot_outlined, value: 5653, label: 'sqrft'),
                          IconDetail(icon: Icons.house_outlined, value: 6359, label: 'Lot sqrft'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Divider(color: Color.fromARGB(255, 89, 94, 18), thickness: 1),
                    const PropertyDetails(),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            backgroundColor: Colors.transparent,
                            foregroundColor: const Color.fromARGB(255, 89, 94, 18),
                            side: const BorderSide(color: Color.fromARGB(255, 89, 94, 18), width: 1),
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                        child: Text('Schedule A Tour', style: GoogleFonts.roboto(fontSize: 25))),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            backgroundColor: const Color.fromRGBO(89, 94, 18, 0.7),
                            foregroundColor: Colors.white,
                            side: const BorderSide(color: Color.fromARGB(255, 89, 94, 18), width: 1),
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                        child: Text('Contact Our Agent', style: GoogleFonts.roboto(fontSize: 25))),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// 595E12
