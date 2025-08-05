//Packages
import 'package:flutter/material.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FancyShimmerImage(
          imageUrl: 'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png',
        ),
      ],
    );
  }
}
