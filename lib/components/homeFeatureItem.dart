import 'package:explore_malaysia/components/icon_detail.dart';
import 'package:explore_malaysia/components/tags.dart';
import 'package:explore_malaysia/pages/property_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeFeatureItem extends StatelessWidget {
  const HomeFeatureItem(
      {super.key,
      required this.imagePath,
      required this.price,
      required this.residentialDescription,
      required this.numBed,
      required this.numBathroom,
      required this.lotSize});

  final String imagePath;

  final String price;

  final String residentialDescription;
  final int numBed;
  final int numBathroom;
  final int lotSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
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
                    const TagWidget(
                      bgColor: Color.fromRGBO(89, 94, 18, 0.75),
                      tag: 'FEATURED',
                    ),
                    Row(
                      children: const [
                        TagWidget(
                          bgColor: Color.fromARGB(190, 84, 84, 84),
                          tag: 'FOR SALE',
                        ),
                        TagWidget(
                          bgColor: Color.fromARGB(190, 84, 84, 84),
                          tag: 'READY',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned.fill(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.arrow_back,
                      size: 46,
                      color: Color.fromRGBO(255, 255, 255, 0.75),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 46,
                      color: Color.fromRGBO(255, 255, 255, 0.75),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(residentialDescription,
                style: GoogleFonts.roboto(fontSize: 20), overflow: TextOverflow.ellipsis),
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('MYR 5,000,000',
                      style: GoogleFonts.roboto(
                          fontSize: 18, fontWeight: FontWeight.bold, color: const Color(0xFF595E12))),
                ),
              ),
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
          const Divider(color: Color.fromARGB(255, 89, 94, 18), thickness: 1),
        ],
      ),
    );
  }
}
