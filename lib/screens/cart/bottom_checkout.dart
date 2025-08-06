//Packages
import 'package:flutter/material.dart';

//Widgets
import '../../widgets/title_text.dart';
import '../../widgets/subtitle_text.dart';

class CartBottomCheckout extends StatelessWidget {
  const CartBottomCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: kBottomNavigationBarHeight + deviceHeight * 0.024,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(top: BorderSide(width: 1, color: Colors.grey)),
        ),

        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.026,
            vertical: deviceHeight * 0.009,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(title: 'Total (6 products/6items)' * 15),
                    SubTitleText(title: '16.99\$', color: Colors.blue),
                  ],
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Checkout')),
            ],
          ),
        ),
      ),
    );
  }
}
