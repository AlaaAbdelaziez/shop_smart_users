//Packages
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

//consts
import '../../consts/app_constants.dart';

//Widgets
import '../../widgets/title_text.dart';
import '../../widgets/subtitle_text.dart';
import '../../widgets/products/heart_button.dart';

//Screens
import '../../screens/inner_screens/product_details.dart';

class LatestArrivalProductsWidget extends StatelessWidget {
  const LatestArrivalProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () async {
          await Navigator.pushNamed(context, ProductDetails.routeName);
        },
        child: SizedBox(
          width: deviceWidth * 0.5,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: FancyShimmerImage(
                    imageUrl: AppConstants.productImageUrl,
                    width: deviceWidth * 0.28,
                    height: deviceHeight * 0.28,
                  ),
                ),
              ),
              SizedBox(width: deviceWidth * 0.017),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(title: 'title ' * 10, maxLines: 2, fontSize: 18),
                    FittedBox(
                      child: Row(
                        children: [
                          const HeartButtonWidget(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart_rounded),
                          ),
                        ],
                      ),
                    ),
                    FittedBox(
                      child: SubTitleText(
                        title: '1556.5\$',
                        color: Colors.blue,
                      ),
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
