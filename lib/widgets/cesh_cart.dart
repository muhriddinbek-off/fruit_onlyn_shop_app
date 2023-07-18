import 'package:flutter/material.dart';

class CeshCart extends StatelessWidget {
  final String title;
  final TextInputType type;
  const CeshCart({super.key, required this.title, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 56,
      decoration: BoxDecoration(
        color: const Color(0xFFF3F1F1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        keyboardType: type,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'Josefin Sans', color: Color(0xFFC2BDBD)),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
