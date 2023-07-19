import 'package:flutter/material.dart';
import 'package:fruit_onlyn_shop_app/widgets/delivery.dart';

class DeliveryStatus extends StatelessWidget {
  const DeliveryStatus({super.key});

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
                const Text('Delivery Status', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white, fontFamily: 'Josefin Sans')),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                Expanded(child: Delivery()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
