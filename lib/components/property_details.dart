import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyDetails extends StatefulWidget {
  const PropertyDetails({super.key});

  @override
  State<PropertyDetails> createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  List<String> aboutProperty = [
    'Taman Manikar is also one of the most popular gated and secured communities in Kota Kinabalu, catering to those who choose to remain in the comfort of their own homes while maintaining their security and peace of mind.',
    'HELOOAJJJ JJAHDADKADI  IAHSIA',
    'asdasdadasdsdasdsad',
    'lorem lorem lorem',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text('Property Details', style: GoogleFonts.roboto(fontSize: 22)),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(left: 5, right: 5),
                backgroundColor: const Color.fromRGBO(89, 94, 18, 0.7),
                foregroundColor: Colors.white,
                side: const BorderSide(color: Color.fromARGB(255, 89, 94, 18), width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.info_outline, size: 18),
                  SizedBox(width: 2),
                  Text('About this property', style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(left: 5, right: 5),
                backgroundColor: null,
                foregroundColor: Colors.black,
                side: const BorderSide(color: Color.fromARGB(255, 89, 94, 18), width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.work_outline, size: 18),
                  SizedBox(width: 2),
                  Text('Property features', style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(left: 5, right: 5),
                backgroundColor: null,
                foregroundColor: Colors.black,
                side: const BorderSide(color: Color.fromARGB(255, 89, 94, 18), width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.table_chart_outlined, size: 18),
                  SizedBox(width: 2),
                  Text('Additional details', style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 80,
          child: PageView.builder(
              itemCount: aboutProperty.length,
              itemBuilder: (context, index) {
                return Text(
                  aboutProperty[index],
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.justify,
                );
              }),
        )
      ],
    );
  }
}
