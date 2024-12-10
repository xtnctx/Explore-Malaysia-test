import 'package:explore_malaysia/components/icon_detail.dart';
import 'package:explore_malaysia/pages/property_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchItem extends StatelessWidget {
  const SearchItem(
      {super.key,
      required this.imagePath,
      required this.distance,
      required this.price,
      required this.residentialName,
      required this.residentialPlace,
      required this.residentialDescription,
      required this.numBed,
      required this.numBathroom,
      required this.lotSize});

  final String imagePath;
  final String distance;
  final String price;
  final String residentialName;
  final String residentialPlace;
  final String residentialDescription;
  final int numBed;
  final int numBathroom;
  final int lotSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Stack(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PropertyDetailPage()),
                );
              },
              child: Container(
                height: 225,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(25.0)),
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
                    image: ExactAssetImage(imagePath),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 15,
              right: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color.fromRGBO(89, 94, 18, 0.75)),
                    child: Text(
                      distance,
                      style: const TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  const Icon(
                    Icons.favorite_outline,
                    color: Color.fromRGBO(89, 94, 18, 1),
                    size: 30,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 15,
              right: 15,
              bottom: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: GoogleFonts.roboto(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(residentialName,
              style: GoogleFonts.roboto(
                  fontSize: 20, color: const Color.fromRGBO(89, 94, 18, 1), fontWeight: FontWeight.w500),
              overflow: TextOverflow.ellipsis),
        ),
        const SizedBox(height: 2),
        Row(
          children: [
            Expanded(child: Text(residentialPlace)),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconDetail(icon: Icons.bed_outlined, value: numBed),
                  IconDetail(icon: Icons.bathroom_outlined, value: numBathroom),
                  IconDetail(icon: Icons.square_foot_outlined, value: lotSize),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(residentialDescription,
              style: GoogleFonts.roboto(fontSize: 16), overflow: TextOverflow.ellipsis),
        ),
        const Divider(color: Color.fromARGB(255, 89, 94, 18), thickness: 1),
      ],
    );
  }
}
