import 'package:choice_date_of_birth/utilities/constants.dart';
import 'package:choice_date_of_birth/widgets/choice_container.dart';
import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  const Choice({super.key});

  @override
  Widget build(BuildContext context) {
    // position widgets dynamically for different screen size;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: AppImage.kTopLeft,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: AppImage.kBottomRight,
          ),
          Positioned(
            // position widgets dynamically for different screen size;
            top: screenHeight * 0.6, // or top: 624
            left: screenWidth * 0.2, // or left: 67

            child: SizedBox(
              width: 138,
              height: 136,
              child: Stack(
                children: <Widget>[
                  AppImage.kCenterBig,
                  Align(
                    alignment: Alignment.topRight,
                    child: AppImage.kCenterSmall,
                  ),
                ],
              ),
            ),
          ),
          ChoiceContainer(
            screenTop: (screenHeight / 2) - 50, // or screenTop: 253
            screenLeft: (screenWidth / 2) - 25, // or screenLeft: 34
          ),
          ChoiceContainer(
            screenTop: (screenHeight / 2) + 25, // or screenTop: 457
            screenLeft: (screenWidth / 2) - 25, // or screenLeft: 34
          ),
        ],
      ),
    );
  }
}
