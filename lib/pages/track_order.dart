import 'package:flutter/material.dart';
import 'package:fruit_onlyn_shop_app/widgets/cart_button.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(32),
              height: 164,
              width: 164,
              decoration: BoxDecoration(color: const Color(0xFFE0FFE5), borderRadius: BorderRadius.circular(200), border: Border.all(color: const Color(0xFF4CD964), style: BorderStyle.solid, width: 2)),
              child: Container(height: 100, width: 100, decoration: BoxDecoration(color: const Color(0xFF4CD964), borderRadius: BorderRadius.circular(100)), child: const Icon(Icons.done, color: Colors.white, size: 45)),
            ),
            const SizedBox(height: 56),
            const Text('Congratulations!!!', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500, color: Color(0xFF27214D), fontFamily: 'Josefin Sans')),
            const SizedBox(height: 16),
            const Text('Your order have been taken and is being attended to', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFF27214D), fontFamily: 'Josefin Sans')),
            const SizedBox(height: 56),
            ElevatedButton(
                style: ButtonStyle(
                  minimumSize: const MaterialStatePropertyAll(Size(133, 56)),
                  backgroundColor: const MaterialStatePropertyAll(Color(0xFFFFA451)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),
                onPressed: () {},
                child: const Text('Track order', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans'))),
            const SizedBox(height: 49),
            CartButton(
              buttonName: 'Continue shopping',
              width: 181,
              onPress: () => Navigator.pushNamed(context, '/home-page'),
            ),
          ],
        ),
      ),
    );
  }
}
