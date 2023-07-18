import 'package:flutter/material.dart';
import 'package:fruit_onlyn_shop_app/widgets/cambo.dart';
import 'package:fruit_onlyn_shop_app/widgets/fruits_name.dart';

import '../widgets/hottest.dart';
import '../widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Image.asset('assets/images/menyu.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 20),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/my-basket');
                    },
                    icon: const Icon(Icons.shopping_basket, color: Color(0xFFFFA451), size: 30)),
                const Text('My Basket', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xFF27214D), fontFamily: 'Josefin Sans')),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            const Text(
              'Hello Tony, What fruit salad combo do you want today?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF27214D), fontFamily: 'Josefin Sans'),
            ),
            const SizedBox(height: 24),
            const SearchWidget(),
            const SizedBox(height: 40),
            const Text('Recommended Combo', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Color(0xFF27214D), fontFamily: 'Josefin Sans')),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Cambo(img: 'assets/fruits/1.png', title: 'Honey lime combo', cent: '2.000'),
                Cambo(img: 'assets/fruits/2.png', title: 'Honey lime combo', cent: '8.000'),
              ],
            ),
            const SizedBox(height: 50),
            const Hottest(),
            const SizedBox(height: 20),
            const SizedBox(height: 220, child: FruitsName()),
          ],
        ),
      ),
    );
  }
}
