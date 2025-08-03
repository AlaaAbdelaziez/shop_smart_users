//Packages
import 'package:flutter/material.dart';

//Widgets
import '../widgets/title_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TitleText(title: 'Cart Screen', fontSize: 40)),
    );
  }
}
