//Packages
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:shopsmart_users/widgets/title_text.dart';

//Widgets
import '../../widgets/empty_bag.dart';
import '../../widgets/products/product_widget.dart';
//Services
import '../../services/assets_manager.dart';

class WishList extends StatelessWidget {
  static const routeName = '/WishList';
  const WishList({super.key});
  final bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Scaffold(
            body: EmptyBagWidget(
              title: 'your WishList is empty',
              imagePath: AssetsManager.shoppingBasket,
              subtitle:
                  'Looks like ypu didn\'t add anything to your cart \n go ahead and start shooping',
              buttonText: 'Shop now',
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: const TitleText(title: 'WishList (5)'),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(AssetsManager.shoppingCart),
              ),
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
            ),
            body: DynamicHeightGridView(
              itemCount: 220,
              builder: ((context, index) {
                return ProductWidget(heartColor: Colors.red.shade200);
              }),
              crossAxisCount: 2,
            ),
          );
  }
}
