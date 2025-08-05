//Packages
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shopsmart_users/widgets/subtitle_text.dart';
import 'package:provider/provider.dart';

//Widgets
import '../widgets/title_text.dart';
import '../widgets/app_name_widget.dart';

//Sevices
import '../services/assets_manager.dart';

//Providers
import '../providers/theme_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppNameWidget(fontSize: 20),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.shoppingCart),
        ),
      ),
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: false,
            child: Padding(
              padding: EdgeInsets.all(deviceHeight * 0.018),
              child: TitleText(title: 'Please login to have ultimate access'),
            ),
          ),
          SizedBox(height: deviceHeight * 0.009),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.02),
            child: _userInfoRow(deviceHeight, deviceWidth, context),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: deviceWidth * 0.015,
              vertical: deviceHeight * 0.007,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleText(title: 'General'),
                _genralInfoListTile(
                  deviceHeight,
                  AssetsManager.orderSvg,
                  'All Orders',
                  () {},
                ),
                _genralInfoListTile(
                  deviceHeight,
                  AssetsManager.wishList,
                  'Wishlist',
                  () {},
                ),
                _genralInfoListTile(
                  deviceHeight,
                  AssetsManager.recent,
                  'Viewed recently',
                  () {},
                ),
                _genralInfoListTile(
                  deviceHeight,
                  AssetsManager.address,
                  'Address',
                  () {},
                ),
                const Divider(),
                TitleText(title: 'Settings'),
                SizedBox(height: deviceHeight * 0.009),
                SwitchListTile(
                  secondary: Image.asset(AssetsManager.theme),
                  title: Text(
                    themeProvider.getISDarkTheme ? 'Dark mode' : 'Light mode',
                  ),
                  value: themeProvider.getISDarkTheme,
                  onChanged: (_value) {
                    themeProvider.setDarkTheme(themeValue: _value);
                  },
                ),
                const Divider(),
              ],
            ),
          ),
          Center(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {},
              icon: Icon(Icons.login, color: Colors.white),
              label: Text('Login', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _genralInfoListTile(
    double deviceHeight,
    String path,
    String title,
    Function onTap,
  ) {
    return ListTile(
      onTap: () {
        onTap();
      },
      leading: Image.asset(path, height: deviceHeight * 0.035),
      title: SubTitleText(title: title),
      trailing: Icon(IconlyLight.arrowRight2),
    );
  }

  Widget _userInfoRow(
    double deviceHeight,
    double deviceWidth,
    BuildContext context,
  ) {
    return Row(
      children: [
        Container(
          height: deviceHeight * 0.09,
          width: deviceWidth * 0.17,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).cardColor,
            border: Border.all(
              color: Theme.of(context).scaffoldBackgroundColor,
              width: deviceWidth * 0.009,
            ),
            image: DecorationImage(
              image: NetworkImage(
                'https://static.gettyimages.com/display-sets/creative-landing/images/GettyImages-2195074919.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: deviceWidth * 0.01),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText(title: 'Alaa Abdelaziez'),
            SubTitleText(title: 'alaaabdelaziez@test.com'),
          ],
        ),
      ],
    );
  }
}
