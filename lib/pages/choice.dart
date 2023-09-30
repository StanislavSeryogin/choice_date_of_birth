import 'package:choice_date_of_birth/utilities/constants.dart';
import 'package:choice_date_of_birth/utilities/layout_helper.dart';
import 'package:choice_date_of_birth/widgets/choice_container.dart';
import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  const Choice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final layoutHelper = LayoutHelper(
      screenWidth: MediaQuery.of(context).size.width,
      screenHeight: MediaQuery.of(context).size.height,
    );

    return Scaffold(
      body: Stack(
        children: [
          buildTopLeftImage(),
          buildBottomRightImage(),
          buildCenterImageStack(
            layoutHelper.getCenterTopPosition(),
            layoutHelper.getCenterLeftPosition(),
          ),
          buildChoiceContainer(
            layoutHelper.getContainerTopPosition(0.3),
            layoutHelper.getDynamicLeft(),
            mainText: 'Track my period',
            subText: 'contraception and wellbeing',
          ),
          buildChoiceContainer(
            layoutHelper.getContainerTopPosition(0.3) + 204,
            layoutHelper.getDynamicLeft(),
            mainText: 'Get pregnant',
            subText: 'learn about reproductive health',
          ),
        ],
      ),
    );
  }

  Align buildTopLeftImage() {
    return Align(
      alignment: Alignment.topLeft,
      child: AppImage.kTopLeft,
    );
  }

  Align buildBottomRightImage() {
    return Align(
      alignment: Alignment.bottomRight,
      child: AppImage.kBottomRight,
    );
  }

  Positioned buildCenterImageStack(double top, double left) {
    return Positioned(
      top: top,
      left: left,
      child: SizedBox(
        width: 138,
        height: 136,
        child: Stack(
          children: [
            AppImage.kCenterBig,
            Align(
              alignment: Alignment.topRight,
              child: AppImage.kCenterSmall,
            ),
          ],
        ),
      ),
    );
  }

  ChoiceContainer buildChoiceContainer(double top, double left,
      {required String mainText, required String subText}) {
    return ChoiceContainer(
      screenTop: top,
      screenLeft: left,
      mainText: mainText,
      subText: subText,
      onTap: () {},
    );
  }
}
