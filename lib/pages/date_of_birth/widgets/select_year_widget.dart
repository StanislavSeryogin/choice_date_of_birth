import 'package:choice_date_of_birth/cubit/data_cubit/data_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectYearWidget extends StatelessWidget {
  const SelectYearWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataCubit = BlocProvider.of<DataCubit>(context);
    final years = dataCubit.years;

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
                dataCubit.selectDate(selectedYear);
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
