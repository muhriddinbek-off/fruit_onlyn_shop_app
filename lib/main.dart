import 'package:flutter/material.dart';
import 'package:fruit_onlyn_shop_app/pages/add_to_basket.dart';
import 'package:fruit_onlyn_shop_app/pages/complate_order.dart';
import 'package:fruit_onlyn_shop_app/pages/delivery_status.dart';
import 'package:fruit_onlyn_shop_app/pages/home_page.dart';
import 'package:fruit_onlyn_shop_app/pages/lets_contiuns.dart';
import 'package:fruit_onlyn_shop_app/pages/main-menu.dart';
import 'package:fruit_onlyn_shop_app/pages/my_basket.dart';
import 'package:fruit_onlyn_shop_app/pages/pay_with_card.dart';
import 'package:fruit_onlyn_shop_app/pages/start_ordering.dart';
import 'package:fruit_onlyn_shop_app/pages/track_order.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/main-menu',
      routes: {
        '/main-menu': (context) => const MainMenu(),
        '/lets-contiuns': (context) => const LetsContiuns(),
        '/start-ordering': (context) => const StartOrdering(),
        '/home-page': (context) => const HomePage(),
        '/add-to-basket': (context) => const AddToBasket(),
        '/my-basket': (context) => const MyBasket(),
        '/pay-with-card': (context) => const PayWithCard(),
        '/track-order': (context) => const TrackOrder(),
        '/delivery-status': (context) => const DeliveryStatus(),
        '/complate-order': (context) => const ComplateOrder(),
      },
    );
  }
}
