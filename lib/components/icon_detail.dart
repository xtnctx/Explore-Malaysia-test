import 'package:flutter/material.dart';

class IconDetail extends StatelessWidget {
  const IconDetail({super.key, required this.icon, required this.value, this.label});
  final IconData icon;
  final int value;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon, size: 20),
              Text(value.toString(), style: const TextStyle(fontSize: 15)),
            ],
          ),
          if (label != null) Text(label!, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
