import 'package:choice_date_of_birth/utilities/constants.dart';
import 'package:choice_date_of_birth/pages/date_of_birth/widgets/select_button_widget.dart';
import 'package:choice_date_of_birth/pages/date_of_birth/widgets/select_year_widget.dart';
import 'package:choice_date_of_birth/widgets/back_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateOfBirthScreen extends StatelessWidget {
  const DateOfBirthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: const CustomAppBarWidget(),
      body: CupertinoPageScaffold(
        child: Stack(
          children: [
            _buildTopLeftVector(),
            _buildTopLineVector(),
            _buildEllipsesStack(),
            _buildCenterRightVector(),
            _buildBottomLeftVector(),
            _buildBottomRightVector(),
            const SelectYearWidget(),
            const SelectButtonWidget(),
            const BackButtonWidget(),
          ],
        ),
      ),
    );
  }

  Align _buildTopLeftVector() {
    return Align(
      alignment: Alignment.topLeft,
      child: AppImageDateOfBirth.kVectorTop,
    );
  }

  Positioned _buildTopLineVector() {
    return Positioned(
      top: 12,
      left: 28,
      width: 190.53,
      height: 85,
      child: AppImageDateOfBirth.kVectorTopLine,
    );
  }

  Positioned _buildEllipsesStack() {
    return Positioned(
      top: 46,
      right: 60,
      height: 77,
      width: 75,
      child: Stack(
        children: [
          AppImageDateOfBirth.kEllipseBig,
          Align(
            alignment: Alignment.bottomRight,
            child: AppImageDateOfBirth.kEllipseSmall,
          ),
        ],
      ),
    );
  }

  Align _buildCenterRightVector() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Transform.translate(
        offset: const Offset(0, -300),
        child: AppImageDateOfBirth.kVectorCenterRight,
      ),
    );
  }

  Align _buildBottomLeftVector() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Transform.translate(
        offset: const Offset(39, -100),
        child: AppImageDateOfBirth.kVectorCenter,
      ),
    );
  }

  Align _buildBottomRightVector() {
    return Align(
      alignment: Alignment.bottomRight,
      child: AppImageDateOfBirth.kVectorBottom,
    );
  }
}
