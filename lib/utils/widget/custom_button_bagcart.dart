import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButtonAddToCart extends StatelessWidget {
  const CustomButtonAddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 44,
          width: 44,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              'assets/svg/home/bage.svg',
              height: 24,
              width: 24,
            ),
          ),
        ),
        Positioned(
          top: 5,
          right: 0,
          child: Container(
            height: 10,
            width: 10,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
        )
      ],
    );
  }
}
