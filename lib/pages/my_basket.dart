import 'package:flutter/material.dart';

import '../modal/map.dart';

class MyBasket extends StatelessWidget {
  const MyBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 144,
            color: const Color(0xFFFFA451),
            child: Row(
              children: [
                Container(
                  height: 32,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Row(
                      children: const [Icon(Icons.arrow_back_ios), Text('Go back', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF27214D)))],
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                const Text('My Basket', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white)),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: baskets.length,
                  itemBuilder: (context, index) {
                    final fruitAdd = baskets[index];
                    return ListTile(
                      title: Text(fruitAdd['name']),
                    );
                  }))
        ],
      ),
    );
  }
}
