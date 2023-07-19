import 'package:flutter/material.dart';
import 'package:fruit_onlyn_shop_app/widgets/cart_button.dart';
import 'package:fruit_onlyn_shop_app/widgets/oddiy_text.dart';

import 'cesh_cart.dart';
import 'complate.dart';

class BottomShit extends StatelessWidget {
  const BottomShit({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          minimumSize: const MaterialStatePropertyAll(Size(199, 56)),
          backgroundColor: const MaterialStatePropertyAll(Color(0xFFFFA451)),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24))),
              builder: (BuildContext context) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        height: 406,
                        child: ListView(
                          children: [
                            const SizedBox(height: 40),
                            const TitleText(text: 'Delivery address'),
                            const SizedBox(height: 16),
                            const CeshCart(title: '10th avenue, Lekki, Lagos State', type: TextInputType.text),
                            const SizedBox(height: 24),
                            const TitleText(text: 'Number we can call'),
                            const SizedBox(height: 16),
                            const CeshCart(title: '09090605708', type: TextInputType.number),
                            const SizedBox(height: 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CartButton(
                                    buttonName: 'Pay on delivery',
                                    width: 125,
                                    onPress: () {
                                      Navigator.pushNamed(context, '/delivery-status');
                                    }),
                                CartButton(
                                    buttonName: 'Pay with card',
                                    width: 115,
                                    onPress: () {
                                      Navigator.pop(context);
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.white,
                                        context: context,
                                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
                                        builder: (context) {
                                          return const ComplateOrder();
                                        },
                                      );
                                    }),
                              ],
                            )
                          ],
                        ),
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
                                  icon: const Icon(Icons.close, size: 30, color: Colors.black))),
                        ],
                      ),
                    ),
                  ],
                );
              });
        },
        child: const Text('Chekout', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans')));
  }
}
