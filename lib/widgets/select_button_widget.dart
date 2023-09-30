import 'package:choice_date_of_birth/utilities/constants.dart';
import 'package:flutter/material.dart';

class SelectButtonWidget extends StatelessWidget {
  const SelectButtonWidget({
    super.key, required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      left: MediaQuery.of(context).size.width / 2 - (189.0 / 2),
      child: Container(
        width: 189.0,
        height: 50.0,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF454581),
              Color(0xFF7978A3),
              //this information in figma: background: linear-gradient(180deg, #454581 0%, #FCFCFF 253.66%);
              //maybe 253.66% this is a typo? 
            ],
            stops: [
              0.0,
              1.0,
            ],
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(30.0),
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 68),
                const Text(
                  'Next',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25.0,
                    color: Color(0xFFffffff),
                  ),
                ),
                const SizedBox(width: 22),
                AppImageDateOfBirth.kArrow,
                const SizedBox(width: 17),
              ],
            ),
          ),
        ),
      ),
    );
  }
}