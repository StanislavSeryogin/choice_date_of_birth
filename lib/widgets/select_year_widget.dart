import 'package:flutter/cupertino.dart';

class SelectYearWidget extends StatelessWidget {
  const SelectYearWidget({
    super.key,
    required this.years,
  });

  final List<int> years;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Log in your date of birth',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25.0,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 300,
            child: CupertinoPicker(
              itemExtent: 60,
              onSelectedItemChanged: (index) {
                int selectedYear = years[index];
                print("Selected Year: $selectedYear");
              },
              children: List.generate(years.length, (index) {
                return Center(
                  child: Text(
                    years[index].toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 40.0,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}