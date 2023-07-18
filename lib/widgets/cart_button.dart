import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  final String buttonName;
  final double width;
  final Function? onPress;
  const CartButton({super.key, required this.buttonName, required this.width, this.onPress});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        side: MaterialStateProperty.all(const BorderSide(color: Color(0xFFFFA451))),
        minimumSize: MaterialStatePropertyAll(Size(width, 56)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      ),
      onPressed: () {},
      child: Text(buttonName, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans', color: Color(0xFFFFA451))),
    );
  }
}
