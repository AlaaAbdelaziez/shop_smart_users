//Packages
import 'package:flutter/material.dart';

//Widgets
import '../subtitle_text.dart';

class CategoryRoundedWidget extends StatelessWidget {
  const CategoryRoundedWidget({
    super.key,
    required this.image,
    required this.name,
  });
  final String image, name;
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            image,
            height: deviceHeight * 0.12,
            width: deviceWidth * 0.15,
          ),
        ),
        Expanded(
          child: SubTitleText(
            title: name,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
