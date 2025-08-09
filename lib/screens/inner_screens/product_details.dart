//Packages
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

//Widgets
import '../../widgets/app_name_widget.dart';
import '../../widgets/title_text.dart';
import '../../widgets/subtitle_text.dart';
import '../../widgets/products/heart_button.dart';

//Services
import '../../services/assets_manager.dart';

//const
import '../../consts/app_constants.dart';

class ProductDetails extends StatefulWidget {
  static const routeName = '/ProductDetails';
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: AppNameWidget(fontSize: 20),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.canPop(context) ? Navigator.pop(context) : null;
          },
          icon: const Icon(Icons.arrow_back_ios, size: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FancyShimmerImage(
              imageUrl: AppConstants.productImageUrl,
              width: double.infinity,
              height: deviceHeight * 0.3,
              boxFit: BoxFit.cover,
            ),
            SizedBox(height: deviceHeight * 0.01),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          'title ' * 16,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //SizedBox(height: deviceHeight * 0.02),
                      SubTitleText(
                        title: '1656.5\$',
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  SizedBox(height: deviceHeight * 0.01),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                          child: HeartButtonWidget(color: Colors.teal.shade200),
                        ),
                        Expanded(
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.white,
                            ),
                            label: Text(
                              'Add to Cart',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TitleText(title: 'About this item'),
                      SubTitleText(title: 'in Category '),
                    ],
                  ),
                  SizedBox(height: deviceHeight * 0.02),
                  SubTitleText(title: 'discription' * 15),
                ],
              ),
            ),
            SizedBox(height: deviceHeight * 0.01),
          ],
        ),
      ),
    );
  }
}
