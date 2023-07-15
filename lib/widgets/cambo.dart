import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cambo extends StatefulWidget {
  final String img;
  final String title;
  final String cent;
  const Cambo({
    super.key,
    required this.img,
    required this.title,
    required this.cent,
  });

  @override
  State<Cambo> createState() => _CamboState();
}

class _CamboState extends State<Cambo> {
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 9),
      height: 183,
      width: 152,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Color.fromRGBO(32, 32, 32, 0.05), spreadRadius: 10, blurRadius: 30),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                isSelect = !isSelect;
              });
            },
            icon: isSelect ? const Icon(Icons.favorite, color: Colors.red) : const Icon(Icons.favorite_outline, color: Color(0xFFFFA451)),
          ),
          Center(child: Image.asset(widget.img, height: 70, width: 90, fit: BoxFit.fill)),
          Text(widget.title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF27214D), height: 1.9)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/images/curs.svg'),
                  Text(widget.cent, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFFF08626))),
                ],
              ),
              const Icon(Icons.add, color: Color(0xFFEC7B15)),
            ],
          )
        ],
      ),
    );
  }
}
