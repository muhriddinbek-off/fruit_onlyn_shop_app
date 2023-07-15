import 'package:flutter/material.dart';

class LetsContiuns extends StatelessWidget {
  const LetsContiuns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(flex: 6, child: Container(padding: const EdgeInsets.only(top: 70), color: const Color(0xFFFFA451), child: Image.asset('assets/images/1.png'))),
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView(
                  children: [
                    const SizedBox(height: 25),
                    const Text(
                      'Get The Freshest Fruit Salad Combo',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF27214D)),
                    ),
                    const SizedBox(
                      child: Expanded(
                          child: Text(
                        'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF5D577E), height: 1.8),
                      )),
                    ),
                    const SizedBox(height: 72),
                    ElevatedButton(
                        style: ButtonStyle(
                          minimumSize: const MaterialStatePropertyAll(Size(327, 56)),
                          backgroundColor: const MaterialStatePropertyAll(Color(0xFFFFA451)),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/start-ordering');
                        },
                        child: const Text(
                          'Let’s Continue',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                        )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
