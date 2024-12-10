import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({super.key, required this.bgColor, required this.tag});
  final Color bgColor;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(15)), color: bgColor),
      child: Text(
        tag,
        style: const TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }
}
