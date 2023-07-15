import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtomAdd extends StatefulWidget {
  final int title;
  const ButtomAdd({super.key, required this.title});

  @override
  State<ButtomAdd> createState() => _ButtomAddState();
}

class _ButtomAddState extends State<ButtomAdd> {
  int add = 1;
  int common = 0;
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.remove_circle_outline, color: Color(0xFF333333))),
            Text(
              '$add',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Color(0xFF27214D)),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    add++;
                  });
                },
                icon: const Icon(Icons.add_circle_outline, color: Color(0xFFFFA451))),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset('assets/images/curs.svg'),
            Text("${widget.title}", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Color(0xFF27214D))),
          ],
        )
      ],
    );
  }
}
