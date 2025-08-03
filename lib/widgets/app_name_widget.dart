//Packages
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

//Widgets
import '../widgets/title_text.dart';

class AppNameWidget extends StatelessWidget {
  const AppNameWidget({super.key, this.fontSize = 30});
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.purple,
      highlightColor: Colors.red,
      child: TitleText(title: 'Shop Smart', fontSize: fontSize),
    );
  }
}
