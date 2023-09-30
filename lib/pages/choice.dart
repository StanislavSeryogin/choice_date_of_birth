import 'package:choice_date_of_birth/utilities/constants.dart';
import 'package:choice_date_of_birth/utilities/layout_helper.dart';
import 'package:choice_date_of_birth/widgets/choice_container_widget.dart';
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
            layoutHelper.getCenterTopPositionChoice(),
            layoutHelper.getCenterLeftPositionChoice(),
          ),
          buildChoiceContainer(
            layoutHelper.getContainerTopPositionChoice(0.3),
            layoutHelper.getDynamicLeftChoice(),
            mainText: 'Track my period',
            subText: 'contraception and wellbeing',
          ),
          buildChoiceContainer(
            layoutHelper.getContainerTopPositionChoice(0.3) + 204,
            layoutHelper.getDynamicLeftChoice(),
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
      child: AppImageChoice.kTopLeft,
    );
  }

  Align buildBottomRightImage() {
    return Align(
      alignment: Alignment.bottomRight,
      child: AppImageChoice.kBottomRight,
    );
  }

  Positioned buildCenterImageStack(double top, double left) {
    return Positioned(
      top: top,
      left: left,
      width: 138,
      height: 136,
      child: Stack(
        children: [
          AppImageChoice.kCenterBig,
          Align(
            alignment: Alignment.topRight,
            child: AppImageChoice.kCenterSmall,
          ),
        ],
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
