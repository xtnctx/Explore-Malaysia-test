import 'package:explore_malaysia/components/icon_detail.dart';
import 'package:explore_malaysia/components/search_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(255, 216, 216, 216), Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: const Icon(Icons.menu, color: Colors.black),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logowhite-01.png',
                height: 40,
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.person, color: Colors.black),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(Icons.explore_outlined, size: 40),
                          const SizedBox(width: 8),
                          Text('in', style: GoogleFonts.roboto(fontSize: 22)),
                          const SizedBox(width: 8),
                          SizedBox(
                            height: 30,
                            width: 300,
                            child: TextField(
                              style: GoogleFonts.roboto(
                                  fontSize: 22, color: const Color.fromRGBO(89, 94, 18, 1)),
                              decoration: const InputDecoration(
                                labelText: "Kota Kinabalu",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [Icon(Icons.search), Icon(Icons.filter_alt_outlined)],
                            ),
                          ),
                        ],
                      ),
                      const Divider(color: Color.fromARGB(255, 89, 94, 18), thickness: 1),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      children: const [
                        SearchItem(
                          imagePath: 'assets/images/1.jpeg',
                          distance: '16 km away',
                          price: 'MYR 5,000,000',
                          residentialName: 'BUNGALOW, RESIDENTIAL',
                          residentialPlace: 'Kota Kinabalu, Malaysia',
                          residentialDescription: 'For SALE | Taman Manikar | New Bungalaw | CL999 | Likas',
                          numBed: 3,
                          numBathroom: 5,
                          lotSize: 5653,
                        ),
                        SearchItem(
                          imagePath: 'assets/images/2.jpg',
                          distance: '30 km away',
                          price: 'MYR 1,780,000',
                          residentialName: 'TERRACE / LINK HOUSE, RESIDENTIAL',
                          residentialPlace: 'Kota Kinabalu, Malaysia',
                          residentialDescription:
                              'Raffles Residence 199, Taman Bukit Gambier, Gelugor, Penang',
                          numBed: 6,
                          numBathroom: 6,
                          lotSize: 3600,
                        ),
                        SearchItem(
                          imagePath: 'assets/images/1.jpeg',
                          distance: '16 km away',
                          price: 'MYR 5,000,000',
                          residentialName: 'BUNGALOW, RESIDENTIAL',
                          residentialPlace: 'Kota Kinabalu, Malaysia',
                          residentialDescription: 'For SALE | Taman Manikar | New Bungalaw | CL999 | Likas',
                          numBed: 3,
                          numBathroom: 5,
                          lotSize: 5653,
                        ),
                        SearchItem(
                          imagePath: 'assets/images/2.jpg',
                          distance: '30 km away',
                          price: 'MYR 1,780,000',
                          residentialName: 'TERRACE / LINK HOUSE, RESIDENTIAL',
                          residentialPlace: 'Kota Kinabalu, Malaysia',
                          residentialDescription:
                              'Raffles Residence 199, Taman Bukit Gambier, Gelugor, Penang',
                          numBed: 6,
                          numBathroom: 6,
                          lotSize: 3600,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
