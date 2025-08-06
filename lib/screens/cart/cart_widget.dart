//Packages
import 'package:flutter/material.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shopsmart_users/screens/cart/bottom_checkout.dart';

//Widgets
import '../../widgets/title_text.dart';
import '../../widgets/subtitle_text.dart';
import '../cart/quantity_bottom_sheet.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return FittedBox(
      child: IntrinsicWidth(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(deviceWidth * 0.05),
                child: FancyShimmerImage(
                  imageUrl:
                      'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png',
                  height: deviceHeight * 0.2,
                  width: deviceWidth * 0.3,
                ),
              ),
              SizedBox(width: deviceWidth * 0.04),
              IntrinsicWidth(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: deviceWidth * 0.6,
                          child: TitleText(title: 'title' * 10, maxLines: 2),
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.clear),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(IconlyLight.heart),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubTitleText(title: '16\$', fontSize: 20),
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              width: 2,
                              color: Theme.of(context).cardColor,
                            ),
                          ),
                          onPressed: () async {
                            await showModalBottomSheet(
                              backgroundColor: Theme.of(
                                context,
                              ).scaffoldBackgroundColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return QuantityBottomSheet();
                              },
                            );
                          },
                          icon: Icon(IconlyLight.arrowDown),
                          label: Text('Qty:6'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
