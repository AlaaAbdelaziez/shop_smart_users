//Packages
import 'package:flutter/material.dart';

//Widgets
import '../../widgets/subtitle_text.dart';

class QuantityBottomSheet extends StatelessWidget {
  const QuantityBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: deviceHeight * 0.009),
          Container(
            height: deviceHeight * 0.006,
            width: deviceWidth * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
          ),
          SizedBox(height: deviceHeight * 0.007),
          Expanded(
            child: ListView.builder(
              itemCount: 35,
              itemBuilder: (context, index) {
                return InkWell(
                  splashColor: Colors.grey,
                  onTap: () {
                    print('$index');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(child: SubTitleText(title: '${index + 1}')),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
