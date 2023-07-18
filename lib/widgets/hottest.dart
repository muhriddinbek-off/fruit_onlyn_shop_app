import 'package:flutter/material.dart';

class Hottest extends StatefulWidget {
  const Hottest({super.key});

  @override
  State<Hottest> createState() => _HottestState();
}

class _HottestState extends State<Hottest> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text('Hottest', 0),
        text('Popular', 1),
        text('New combo', 2),
        text('Top', 3),
      ],
    );
  }

  Widget text(String title, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          current = index;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: current == index ? 24 : 16, fontWeight: FontWeight.w500, color: current == index ? const Color(0xFF27214D) : const Color(0xFF938DB5), fontFamily: 'Josefin Sans')),
          Container(
            height: 4,
            width: 30,
            color: current == index ? const Color(0xFFFFA451) : Colors.white,
          )
        ],
      ),
    );
  }
}
