import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_onlyn_shop_app/modal/map.dart';

class FruitsName extends StatefulWidget {
  const FruitsName({super.key});

  @override
  State<FruitsName> createState() => _FruitsNameState();
}

class _FruitsNameState extends State<FruitsName> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: fruitsInfo.length,
        itemBuilder: (context, index) {
          final info = fruitsInfo[index];

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 9),
            height: 183,
            width: 152,
            decoration: BoxDecoration(
              color: const Color(0xFFFEF0F0),
              borderRadius: BorderRadius.circular(16),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/add-to-basket', arguments: info);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {});
                      info['select'] = !info['select'];
                    },
                    icon: info['select'] ? const Icon(Icons.favorite, color: Colors.red) : const Icon(Icons.favorite_outline, color: Color(0xFFFFA451)),
                  ),
                  Center(child: Image.asset(info['image'], height: 70, width: 90, fit: BoxFit.fill)),
                  Text(info['name'], style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF27214D), height: 1.9, fontFamily: 'Josefin Sans')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/curs.svg'),
                          Text('${info['sent']}', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFFF08626))),
                        ],
                      ),
                      const Icon(Icons.add, color: Color(0xFFEC7B15)),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
