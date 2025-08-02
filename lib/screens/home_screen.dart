//Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Consts
import '../consts/app_colors.dart';

//Provider
import '../providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HelloWorld',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Hello World')),
          SwitchListTile(
            title: Text(
              themeProvider.getISDarkTheme ? 'Dark mode' : 'Light mode',
            ),
            value: themeProvider.getISDarkTheme,
            onChanged: (_value) {
              themeProvider.setDarkTheme(themeValue: _value);
            },
          ),
        ],
      ),
    );
  }
}
