import 'package:flutter/material.dart';
import 'package:fruit_onlyn_shop_app/modal/map.dart';
import 'package:fruit_onlyn_shop_app/widgets/basket.dart';
import 'package:provider/provider.dart';

import '../providers/common_provider.dart';
import '../widgets/buttom_add.dart';
import '../widgets/text.dart';

class AddToBasket extends StatefulWidget {
  const AddToBasket({super.key});

  @override
  State<AddToBasket> createState() => _AddToBasketState();
}

class _AddToBasketState extends State<AddToBasket> {
  @override
  Widget build(BuildContext context) {
    final argumentCommon = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      backgroundColor: const Color(0xFFFFA451),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 64, left: 20),
                height: 32,
                width: 80,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100)),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.arrow_back_ios, size: 18),
                      Text('Go back', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF27214D), fontFamily: 'Josefin Sans')),
                    ],
                  ),
                ),
              ),
              Center(child: Image.asset(argumentCommon['image'], height: 200, width: 200, fit: BoxFit.fill)),
            ],
          )),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 491,
            decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))),
            child: ListView(
              children: [
                const Text('Quinoa Fruit Salad', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500, color: Color(0xFF27214D), fontFamily: 'Josefin Sans')),
                const SizedBox(height: 25),
                ButtomAdd(title: argumentCommon['sent']),
                const Divider(thickness: 1),
                const SizedBox(height: 32),
                const Expanded(child: TextTitle()),
                const SizedBox(height: 18),
                const Expanded(child: Text('Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF27214D), height: 1.7, fontFamily: 'Josefin Sans'))),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(thickness: 1),
                ),
                const Expanded(child: Text('If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000), height: 1.7, fontFamily: 'Josefin Sans'))),
                const SizedBox(height: 23),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const BasketAdd(),
                    ElevatedButton(
                        style: ButtonStyle(
                          minimumSize: const MaterialStatePropertyAll(Size(219, 56)),
                          backgroundColor: const MaterialStatePropertyAll(Color(0xFFFFA451)),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        ),
                        onPressed: () {
                          setState(() {
                            basketImage.add(argumentCommon['image']);
                            basketName.add(argumentCommon['name']);
                            basketSent.add(argumentCommon['sent']);
                            Provider.of<CommonProvider>(context, listen: false).changeStatus(argumentCommon['sent']);
                            Navigator.pop(context);
                          });
                        },
                        child: const Text('Add to basket', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans'))),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
