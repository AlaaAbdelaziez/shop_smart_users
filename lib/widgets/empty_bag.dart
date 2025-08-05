//Packages
import 'package:flutter/material.dart';

//Services
import '../services/assets_manager.dart';

//Widgets
import '../widgets/subtitle_text.dart';
import '../widgets/title_text.dart';

class EmptyBagWidget extends StatelessWidget {
  const EmptyBagWidget({
    super.key,
    required this.title,
    required this.imagePath,
    required this.subtitle,
    required this.buttonText,
  });
  final String imagePath, title, subtitle, buttonText;

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: deviceHeight * 0.07),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: deviceHeight * 0.35,
              width: double.infinity,
            ),
            TitleText(
              title: 'Whoops!',
              fontSize: deviceWidth * 0.1,
              color: Colors.red,
            ),
            SizedBox(height: deviceHeight * 0.02),
            SubTitleText(
              title: title,
              fontWeight: FontWeight.w600,
              fontSize: deviceHeight * 0.035,
            ),
            SizedBox(height: deviceHeight * 0.003),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SubTitleText(
                title: subtitle,
                fontWeight: FontWeight.w400,
                fontSize: deviceHeight * 0.025,
              ),
            ),
            SizedBox(height: deviceHeight * 0.02),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                buttonText,
                style: TextStyle(fontSize: deviceHeight * 0.02),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                elevation: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
