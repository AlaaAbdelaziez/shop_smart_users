//Packages

import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

//Widgets
import '../widgets/title_text.dart';
import '../widgets/app_name_widget.dart';
import '../widgets/products/latest_arrival.dart';
import '../widgets/products/category_rounded_widget.dart';

//Consts
import '../consts/app_constants.dart';

//Provider

//Services
import '../services/assets_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    // final double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: AppNameWidget(fontSize: 20),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.shoppingCart),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: deviceHeight * 0.24,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        AppConstants.images[index],
                        fit: BoxFit.fill,
                      );
                    },
                    autoplay: true,
                    itemCount: AppConstants.images.length,
                    pagination: SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.white,
                        activeColor: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: deviceHeight * 0.01),
              const TitleText(title: 'Lateset Arrival', fontSize: 22),
              SizedBox(height: deviceHeight * 0.01),
              SizedBox(
                height: deviceHeight * 0.2,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return LatestArrivalProductsWidget();
                  },
                ),
              ),
              SizedBox(height: deviceHeight * 0.01),
              const TitleText(title: 'Categories', fontSize: 22),
              SizedBox(height: deviceHeight * 0.01),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                children: List.generate(AppConstants.categories.length, (
                  index,
                ) {
                  return CategoryRoundedWidget(
                    image: AppConstants.categories[index].image,
                    name: AppConstants.categories[index].name,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
