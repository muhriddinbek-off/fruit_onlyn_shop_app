import 'package:flutter/material.dart';

class BasketAdd extends StatefulWidget {
  const BasketAdd({super.key});

  @override
  State<BasketAdd> createState() => _BasketAddState();
}

class _BasketAddState extends State<BasketAdd> {
  bool isDay = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isDay = !isDay;
          });
        },
        icon: isDay ? const Icon(Icons.favorite, color: Colors.red, size: 30) : const Icon(Icons.favorite_outline, color: Color(0xFFFFA451), size: 30));
  }
}
