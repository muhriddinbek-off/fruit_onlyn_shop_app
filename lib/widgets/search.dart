import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 56,
          width: 288,
          decoration: BoxDecoration(color: const Color(0xFFF3F4F9), borderRadius: BorderRadius.circular(16)),
          child: const TextField(
            decoration: InputDecoration(border: InputBorder.none, icon: Icon(Icons.search, color: Color(0xFF86869E), size: 26), hintText: 'Search for fruit salad combos', hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF86869E))),
          ),
        ),
        const SizedBox(width: 10),
        const Icon(Icons.tune, color: Color(0xFF070648)),
      ],
    );
  }
}
