import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../providers/common_provider.dart';
import 'bottom_shet.dart';

class TotalChekout extends StatelessWidget {
  const TotalChekout({super.key});

  @override
  Widget build(BuildContext context) {
    final total = Provider.of<CommonProvider>(context).total;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Total', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans')),
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/curs.svg'),
                      Text('$total', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
              const BottomShit(),
            ],
          ),
        ),
      ],
    );
  }
}
