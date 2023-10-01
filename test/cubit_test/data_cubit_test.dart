import 'package:choice_date_of_birth/cubit/data_cubit/data_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("DataCubit", () {
    late DataCubit dataCubit;

    setUp(() {
      dataCubit = DataCubit();
    });

    test('initial state is DataInitial', () {
      expect(dataCubit.state, DataInitial());
    });

    test('selectDate updates the state to DateSelected with the correct year',
        () {
      const yearToTest = 2025;

      dataCubit.selectDate(yearToTest);

      expect(dataCubit.state, const DateSelected(yearToTest));
    });

    test('selectDate with year below 1949 emits DateError', () {
      const yearToTest = 1899;
      dataCubit.selectDate(yearToTest);
      expect(dataCubit.state, const DateError("Incorrect year selected."));
    });

    test('selectDate with year above 2051 emits DateError', () {
      const yearToTest = 2101;
      dataCubit.selectDate(yearToTest);
      expect(dataCubit.state, const DateError("Incorrect year selected."));
    });

    tearDown(() {
      dataCubit.close();
    });
  });
}
