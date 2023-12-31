import 'package:flutter/material.dart';
import 'package:fruit_onlyn_shop_app/pages/add_to_basket.dart';
import 'package:fruit_onlyn_shop_app/pages/delivery_status.dart';
import 'package:fruit_onlyn_shop_app/pages/home_page.dart';
import 'package:fruit_onlyn_shop_app/pages/lets_contiuns.dart';
import 'package:fruit_onlyn_shop_app/pages/main-menu.dart';
import 'package:fruit_onlyn_shop_app/pages/my_basket.dart';
import 'package:fruit_onlyn_shop_app/pages/start_ordering.dart';
import 'package:fruit_onlyn_shop_app/pages/track_order.dart';
import 'package:fruit_onlyn_shop_app/providers/common_provider.dart';
import 'package:fruit_onlyn_shop_app/providers/name_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CommonProvider()),
        ChangeNotifierProvider(create: (context) => CommonSent()),
        Provider(create: (context) => NameProvider()),
      ],
      builder: (context, child) {
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
            '/track-order': (context) => const TrackOrder(),
            '/delivery-status': (context) => const DeliveryStatus(),
          },
        );
      },
    );
  }
}
