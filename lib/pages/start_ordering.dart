import 'package:flutter/material.dart';

class StartOrdering extends StatelessWidget {
  const StartOrdering({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Expanded(flex: 6, child: Container(padding: const EdgeInsets.only(top: 70), color: const Color(0xFFFFA451), child: Image.asset('assets/images/2.png'))),
          Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 56),
                    const Text('What is your firstname?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Color(0xFF27214D), fontFamily: 'Josefin Sans')),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      height: 56,
                      width: 327,
                      decoration: BoxDecoration(color: const Color(0xFFF3F1F1), borderRadius: BorderRadius.circular(10)),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Tony',
                          hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFFC2BDBD), fontFamily: 'Josefin Sans'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 56),
                    ElevatedButton(
                        style: ButtonStyle(
                          minimumSize: const MaterialStatePropertyAll(Size(327, 56)),
                          backgroundColor: const MaterialStatePropertyAll(Color(0xFFFFA451)),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/home-page');
                        },
                        child: const Text(
                          'Start Ordering',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white, fontFamily: 'Josefin Sans'),
                        )),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
