import 'package:choice_date_of_birth/utilities/constants.dart';
import 'package:flutter/material.dart';

class ChoiceContainer extends StatelessWidget {
  const ChoiceContainer({
    super.key,
    required this.screenTop,
    required this.screenLeft,
    required this.mainText,
    required this.subText,
    required this.onTap,
  });

  final double screenTop;
  final double screenLeft;
  final String mainText;
  final String subText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenTop,
      left: screenLeft,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 31),
          width: 346,
          decoration: BoxDecoration(
            color: AppColors.kChoiceContainerColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mainText,
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      subText,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              SizedBox(
                height: 28,
                width: 30,
                child: AppImageChoice.kArrow,
              )
            ],
          ),
        ),
      ),
    );
  }
}
