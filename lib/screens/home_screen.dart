//Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Widgets
import '../widgets/subtitle_text.dart';
import '../widgets/title_text.dart';

//Consts
import '../consts/app_colors.dart';

//Provider
import '../providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleText(
            title:
                'hi there i am using whatsapp hi there i am still using what s aap app by the way',
            fontSize: 30,
            maxLines: 2,
          ),
          const SubTitleText(
            title: 'Hello World',
            fontSize: 60,
            color: Colors.amberAccent,
          ),
          const SubTitleText(title: 'Hello World'),
          const SubTitleText(title: 'Hello World'),
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
