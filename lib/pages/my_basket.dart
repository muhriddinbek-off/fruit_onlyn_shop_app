import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_onlyn_shop_app/widgets/total_chekout.dart';

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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Icon(Icons.arrow_back_ios, size: 18), Text('Go back', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF27214D), fontFamily: 'Josefin Sans'))],
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                const Text('My Basket', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white, fontFamily: 'Josefin Sans')),
              ],
            ),
          ),
          Expanded(
              child: ListView.separated(
                  itemCount: basketImage.length,
                  separatorBuilder: (context, index) => const Divider(thickness: 1.1),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 7),
                      child: ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(6),
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(color: const Color(0xFFF1EFF6), borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(basketImage[index]),
                        ),
                        title: Text(basketName[index], style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans')),
                        subtitle: const Text('2packs', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'Josefin Sans')),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset('assets/images/curs.svg'),
                            Text('${basketSent[index]}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF27214D), fontFamily: 'Josefin Sans')),
                          ],
                        ),
                      ),
                    );
                  })),
          const SizedBox(height: 100, child: TotalChekout()),
        ],
      ),
    );
  }
}
