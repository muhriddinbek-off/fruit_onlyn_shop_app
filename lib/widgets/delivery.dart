import 'package:flutter/material.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        ListTile(
          leading: Container(height: 65, width: 65, decoration: BoxDecoration(color: const Color(0xFFF1EFF6), borderRadius: BorderRadius.circular(10)), child: Image.asset('assets/delivery/chat.png')),
          title: const Text('Order Taken', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans')),
          trailing: Container(height: 24, width: 24, decoration: BoxDecoration(color: const Color(0xFF4CD964), borderRadius: BorderRadius.circular(50)), child: const Icon(Icons.done, color: Colors.white, size: 20)),
        ),
        const SizedBox(height: 48),
        ListTile(
          leading: Container(height: 65, width: 65, decoration: BoxDecoration(color: const Color(0xFFF1EFF6), borderRadius: BorderRadius.circular(10)), child: Image.asset('assets/delivery/order.png')),
          title: const Text('Order Is Being Prepared', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans')),
          trailing: Container(height: 24, width: 24, decoration: BoxDecoration(color: const Color(0xFF4CD964), borderRadius: BorderRadius.circular(50)), child: const Icon(Icons.done, color: Colors.white, size: 20)),
        ),
        const SizedBox(height: 48),
        ListTile(
          leading: Container(height: 65, width: 65, decoration: BoxDecoration(color: const Color(0xFFF1EFF6), borderRadius: BorderRadius.circular(10)), child: Image.asset('assets/delivery/driver.png')),
          title: const Text('Order Is Being Delivered', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans')),
          subtitle: const Text('Your delivery agent is coming', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'Josefin Sans')),
          trailing: Container(height: 40, width: 40, decoration: BoxDecoration(color: const Color(0xFF4CD964), borderRadius: BorderRadius.circular(50)), child: const Icon(Icons.call, color: Colors.white, size: 20)),
        ),
        const SizedBox(height: 26),
        Image.asset(
          'assets/delivery/location.png',
        ),
        const SizedBox(height: 48),
        ListTile(
          leading: Container(padding: const EdgeInsets.all(10), height: 65, width: 65, decoration: BoxDecoration(color: const Color(0xFFF1EFF6), borderRadius: BorderRadius.circular(10)), child: Container(height: 40, width: 40, decoration: BoxDecoration(color: const Color(0xFF4CD964), borderRadius: BorderRadius.circular(100)), child: const Icon(Icons.call, color: Colors.white, size: 20))),
          title: const Text('Order Received', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans')),
          trailing: const Icon(Icons.more_horiz, color: Color(0xFFFFE3C9), size: 50),
        ),
      ],
    );
  }
}
