//Packages
import 'package:flutter/material.dart';

//Widgets
import '../widgets/title_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TitleText(title: 'Profile Screen', fontSize: 40)),
    );
  }
}
