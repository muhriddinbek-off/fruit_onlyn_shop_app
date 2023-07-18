import 'package:flutter/material.dart';
import 'package:fruit_onlyn_shop_app/widgets/cesh_cart.dart';
import 'package:fruit_onlyn_shop_app/widgets/oddiy_text.dart';

class ComplateOrder extends StatelessWidget {
  const ComplateOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 511,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 24, right: 24, bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: ListView(
                    children: [
                      const SizedBox(height: 40),
                      const TitleText(text: 'Card Holders Name'),
                      const SizedBox(height: 16),
                      const CeshCart(title: 'Adolphus Chris', type: TextInputType.text),
                      const SizedBox(height: 24),
                      const TitleText(text: 'Card Number'),
                      const SizedBox(height: 16),
                      const CeshCart(title: '1234 5678 9012 1314', type: TextInputType.number),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TitleText(text: 'Date'),
                                SizedBox(height: 16),
                                CeshCart(title: '10/30', type: TextInputType.number),
                              ],
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TitleText(text: 'CCV'),
                                SizedBox(height: 16),
                                CeshCart(title: '123', type: TextInputType.number),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  height: 96,
                  decoration: const BoxDecoration(color: Color(0xFFFFA451), borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 56,
                        width: 145,
                        decoration: BoxDecoration(color: const Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/track-order');
                            },
                            child: const Text('Complete Order', style: TextStyle(color: Color(0xFFFFA451), fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans'))),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          top: -70,
          child: Column(
            children: [
              Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close, size: 30, color: Colors.black)))
            ],
          ),
        ),
      ],
    );
  }
}
