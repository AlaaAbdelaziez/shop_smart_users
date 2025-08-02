//Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Screens
import './screens/home_screen.dart';

//Consts
import './consts/app_colors.dart';
import './consts/theme_data.dart';

//Provider
import './providers/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeProvider())],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            title: 'Shop Smart Ar',
            theme: Styles.themeData(
              isDarkTheme: themeProvider.getISDarkTheme,
              context: context,
            ),
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
