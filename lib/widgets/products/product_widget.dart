//Packages
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

//const
import '../../consts/app_constants.dart';

//Widgets
import '../title_text.dart';
import '../subtitle_text.dart';
import '../products/heart_button.dart';

//Screens
import '../../screens/inner_screens/product_details.dart';

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
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () async {
          await Navigator.pushNamed(context, ProductDetails.routeName);
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: FancyShimmerImage(
                imageUrl: AppConstants.productImageUrl,
                width: double.infinity,
                height: deviceHeight * 0.22,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Flexible(
                  flex: 5,
                  child: TitleText(title: 'title ' * 10, maxLines: 2),
                ),
                Flexible(child: HeartButtonWidget()),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(flex: 3, child: SubTitleText(title: '1656.5\$')),
                Flexible(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.secondary,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Icon(
                          Icons.add_shopping_cart_rounded,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
