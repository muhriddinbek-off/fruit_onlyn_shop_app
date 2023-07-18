import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('One Pack Contains:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF27214D), fontFamily: 'Josefin Sans')),
        Container(margin: const EdgeInsets.only(top: 5), height: 2, width: 183, color: const Color(0xFFFFA451)),
      ],
    );
  }
}
