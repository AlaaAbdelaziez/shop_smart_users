//Packages
import 'package:flutter/material.dart';
import 'package:shopsmart_users/widgets/title_text.dart';

//Widgets
import '../../widgets/empty_bag.dart';
import '../cart/cart_widget.dart';

//Services
import '../../services/assets_manager.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  final bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Scaffold(
            body: EmptyBagWidget(
              title: 'your cart is empty',
              imagePath: AssetsManager.shoppingBasket,
              subtitle:
                  'Looks like ypu didn\'t add anything to your cart \n go ahead and start shooping',
              buttonText: 'Shop now',
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: const TitleText(title: 'Cart (5)'),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(AssetsManager.shoppingCart),
              ),
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
            ),
            body: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return CartWidget();
              },
            ),
          );
  }
}
