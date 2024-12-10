import 'package:explore_malaysia/components/homeFeatureItem.dart';
import 'package:explore_malaysia/pages/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
          child: ListView(
        children: [
          SizedBox(
            height: 410,
            child: Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0), bottomRight: Radius.circular(50.0)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: ExactAssetImage(
                          'assets/images/the-city-day-tower-malaysia-kuala-lumpur-hd-wallpaper-preview.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 40,
                  right: 40,
                  child: Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        TextField(
                          style: GoogleFonts.roboto(fontSize: 16, color: const Color.fromRGBO(89, 94, 18, 1)),
                          decoration: const InputDecoration(
                            labelText: "Enter Keywords",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        ListTile(
                          leading: Text(
                            'Purpose',
                            style:
                                GoogleFonts.roboto(fontSize: 16, color: const Color.fromRGBO(89, 94, 18, 1)),
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                size: 35,
                                color: Color.fromRGBO(89, 94, 18, 0.8),
                              )),
                        ),
                        ListTile(
                          leading: Text('Completion Status',
                              style: GoogleFonts.roboto(
                                  fontSize: 16, color: const Color.fromRGBO(89, 94, 18, 1))),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                size: 35,
                                color: Color.fromRGBO(89, 94, 18, 0.8),
                              )),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(left: 12, right: 12),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromRGBO(89, 94, 18, 0.8)),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const SearchPage()),
                                      );
                                    },
                                    child: Text('EXPLORE', style: GoogleFonts.roboto(fontSize: 16))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      backgroundColor: null,
                      foregroundColor: const Color.fromARGB(255, 89, 94, 18),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.filter_alt, size: 18),
                        SizedBox(width: 2),
                        Text('More Filter', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Explore Featured Properties',
              style: GoogleFonts.roboto(fontSize: 26, fontWeight: FontWeight.w400),
            ),
          ),
          const HomeFeatureItem(
            imagePath: 'assets/images/1.jpeg',
            price: 'MYR 5,000,000',
            residentialDescription: 'For SALE | Taman Manikar | New Bungalaw | CL9...',
            numBed: 3,
            numBathroom: 5,
            lotSize: 5653,
          ),
          const HomeFeatureItem(
            imagePath: 'assets/images/2.jpg',
            price: 'MYR 1,780,000',
            residentialDescription: 'Raffles Residence 199, Taman Bukit Gambier, Gelugor, Penang',
            numBed: 6,
            numBathroom: 6,
            lotSize: 3600,
          ),
          const HomeFeatureItem(
            imagePath: 'assets/images/1.jpeg',
            price: 'MYR 5,000,000',
            residentialDescription: 'For SALE | Taman Manikar | New Bungalaw | CL9...',
            numBed: 3,
            numBathroom: 5,
            lotSize: 5653,
          ),
        ],
      )),
    );
  }
}
