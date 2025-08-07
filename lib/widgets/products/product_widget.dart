//Packages
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

//const
import '../../consts/app_constants.dart';

//Widgets
import '../title_text.dart';
import '../subtitle_text.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: FancyShimmerImage(
            imageUrl: AppConstants.productImageUrl,
            width: double.infinity,
            height: deviceHeight * 0.22,
          ),
        ),
        Row(
          children: [
            Flexible(flex: 5, child: TitleText(title: 'title' * 10)),
            Flexible(
              child: IconButton(
                onPressed: () {},
                icon: Icon(IconlyLight.heart),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 3, child: SubTitleText(title: '1656.5\$')),
            Flexible(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_shopping_cart_rounded),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
