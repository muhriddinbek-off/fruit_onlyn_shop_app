import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/menu.svg'),
            ElevatedButton(
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(184, 40)),
                  backgroundColor: MaterialStatePropertyAll(Color(0xFFFFA451)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomRight: Radius.circular(16)))),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/lets-contiuns');
                },
                child: const Text('Fruit Hub', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w200, color: Colors.white, fontFamily: 'Josefin Sans'))),
          ],
        ),
      ],
    ));
  }
}
