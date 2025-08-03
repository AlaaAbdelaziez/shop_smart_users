//Packages
import 'package:flutter/material.dart';

//Widgets
import '../widgets/title_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TitleText(title: 'Serach Screen', fontSize: 40)),
    );
  }
}
